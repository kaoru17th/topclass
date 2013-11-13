class SubjectsController < ApplicationController
  def index   
    @subjects = Subject.paginate(page: params[:page])
  end
  
  def show
    @subject = Subject.find(params[:id])
    if @subject.status == "true" 
      flash[:success] = "Subject enable"
    else
      flash[:fail] = "Subject disabled"
    end
  end
  
  def showStudentList
    # <%= link_to I18n.t('materias.boton.estudiantes'), :controller => 'subjects', :action => 'showStudentList', :idSubject => subject.id %>
    @subject = Subject.find(params[:format])
    @semester = Semester.new
    @student_columns = [   {field: 'idStudent', headerText: 'ID', sortable: true}, {field: 'identification', headerText: I18n.t('materias.estudiantes.table.identificacion'), sortable: true},    
      {field: 'firstname', headerText: I18n.t('materias.estudiantes.table.nombre'), sortable: true},   {field: 'lastname', headerText: I18n.t('materias.estudiantes.table.apellido'), sortable: true},   
      {field: 'email', headerText: I18n.t('materias.estudiantes.table.email'), sortable: true}, {field: 'status', headerText: I18n.t('materias.estudiantes.table.estado'), sortable: true}                  
                        ] 
    @semester = Semester.last
    @students = Subject.find_by_sql(["select distinct  u.id idStudent, u.firstname, u.lastname, u.identification, u.email, u.status from preregister_subjects sr, users u where sr.semester_id = ? and sr.subject_id = ? and sr.user_id = u.id ", @semester.id, @subject.id])
    @semester.status =  @subject.id
    @students.count
  end
  
  def searchStudentList
    @subject = Subject.find_by_id(params[:semester][:status])
    @semester = Semester.find(params[:semester][:id])
    @student_columns = [   {field: 'idStudent', headerText: 'ID', sortable: true}, {field: 'identification', headerText: I18n.t('materias.estudiantes.table.identificacion'), sortable: true},    
      {field: 'firstname', headerText: I18n.t('materias.estudiantes.table.nombre'), sortable: true},   {field: 'lastname', headerText: I18n.t('materias.estudiantes.table.apellido'), sortable: true},   
      {field: 'email', headerText: I18n.t('materias.estudiantes.table.email'), sortable: true}, {field: 'status', headerText: I18n.t('materias.estudiantes.table.estado'), sortable: true}                  
                        ] 
    @students = Subject.find_by_sql(["select distinct  u.id idStudent, u.firstname, u.lastname, u.identification, u.email, u.status from preregister_subjects sr, users u where sr.semester_id = ? and sr.subject_id = ? and sr.user_id = u.id ", @semester.id, @subject.id])
    @semester.status =  @subject.id
    flash[:success] = "Se ha cargado el listado de usuario para el semestre " + @semester.name   
    render "showStudentList"
  end
  
  def goQuotaConfig
    @subject = Subject.find(params[:format])
    @quota =  QuotaConfig.where("subject_id = ?", @subject.id).last
    if @quota.nil?
      @quota = QuotaConfig.new
    end
    @quota.subject_id = @subject.id
  end
  
  def createQuota
    begin
       @quota =  QuotaConfig.find(params[:quota_config][:id])
       if @quota.own_quota < (@quota.pregrade_quota + @quota.program_quota)
         flash[:fail] = "La cuota máxima no debe superar la suma de pregado y postgrado"
         render "goQuotaConfig"
       else
         logger.info("INFO: Update quota config ")
         @quota.update_attributes(params[:quota_config])
         flash[:success] = "Quota was updated sucesfull"         
         redirect_to subjects_path    
       end
    rescue
      @quota = QuotaConfig.new(quota_params)
      if @quota.own_quota < (@quota.pregrade_quota + @quota.program_quota)
        flash[:fail] = "La cuota máxima no debe superar la suma de pregado y postgrado"
         render "goQuotaConfig"
       else
         logger.info("INFO: Saving new quota config ")
         @quota.save
         flash[:success] = "Quota was created sucesfull"
      end
    end           
  end
  
  def new
    @subject = Subject.new
  end
  
  def create
    @subject = Subject.new(subject_params)    
    if @subject.save  
      flash[:success] = "Subject created sucesfull"
      redirect_to subjects_path
    else
      flash[:fail] = "Fail Subject creation"
      render "new"
    end
  end
  
  def edit
     @subject = Subject.find(params[:id])
  end
  
  def disable
    @subject = Subject.find(params[:format])
    @subject.status = "inactivo"
    if @subject.update_attributes(params[:subject])
      flash[:success] = "Subject was disabled." 
       redirect_to subjects_path
    else
      flash[:fail] = "Fail disable Subject"
      render "index"
    end
  end
  
  def update
    @subject = Subject.find_by_id(params[:id])
    if @subject.update_attributes(params[:subject])
      flash[:success] = "Subject was updated"
        redirect_to subjects_path
      else
        render "edit"
      end
  end
  
  def destroy
    @subject = Subject.find_by_id(params[:id])
    if @subject.destroy
      flash[:success] = "Subject was destroyed." 
      redirect_to subjects_path
    else
      flash[:fail] = "Fail delete Subject"
      render "index"
    end
  end
  
    private

  def subject_params
      params.require(:subject).permit(:code,:name,:quota,:credits,:status) 
    end
  
    def quota_params
      params.require(:quota_config).permit(:subject_id,:own_quota,:program_quota,:pregrade_quota) 
    end
  
    def signed_in_user
      unless signed_in?
        store_location
        redirect_to signin_url, notice: "Please sign in."
      end
    end
    
    def correct_user
      @user = User.find(params[:id])
      redirect_to(root_url) unless current_user?(@user)
    end
end
