class ForecastsController < ApplicationController
  
  
  
  def index
    #@programs = Program.paginate(page: params[:page]).per_page(10)
    @programs = Program.all
  end
  
  def show
      @program = Program.find_by_id(params[:program_id])
      @semesters = Program.find_by_id(params[:program_id]).semesters.where("startdate < ?", Time.now).order("startdate").limit(6)

      @subjects = Program.find_by_id(params[:program_id]).subjects     

      logger.info "total semesters:"+@semesters.count.to_s


      @subjects_ocupation1 = Subject.count :joins => [:preregister_subjects],:conditions => {'preregister_subjects.semester_id' => @semesters[0].id,'preregister_subjects.program_id' => params[:program_id]},:group => "subjects.id"
      @subjects_ocupation2 = Subject.count :joins => [:preregister_subjects],:conditions => {'preregister_subjects.semester_id' => @semesters[1].id,'preregister_subjects.program_id' => params[:program_id]},:group => "subjects.id"
      @subjects_ocupation3 = Subject.count :joins => [:preregister_subjects],:conditions => {'preregister_subjects.semester_id' => @semesters[2].id,'preregister_subjects.program_id' => params[:program_id]},:group => "subjects.id"
      @subjects_ocupation4 = Subject.count :joins => [:preregister_subjects],:conditions => {'preregister_subjects.semester_id' => @semesters[3].id,'preregister_subjects.program_id' => params[:program_id]},:group => "subjects.id"
      @subjects_ocupation5 = Subject.count :joins => [:preregister_subjects],:conditions => {'preregister_subjects.semester_id' => @semesters[4].id,'preregister_subjects.program_id' => params[:program_id]},:group => "subjects.id"
      @subjects_ocupation6 = Subject.count :joins => [:preregister_subjects],:conditions => {'preregister_subjects.semester_id' => @semesters[5].id,'preregister_subjects.program_id' => params[:program_id]},:group => "subjects.id"

      logger.info "semester:"+@semesters[0].id.to_s+" hash:"+@subjects_ocupation1.to_s
      logger.info "semester:"+@semesters[1].id.to_s+" hash:"+@subjects_ocupation2.to_s
      logger.info "semester:"+@semesters[2].id.to_s+" hash:"+@subjects_ocupation3.to_s
      logger.info "semester:"+@semesters[3].id.to_s+" hash:"+@subjects_ocupation4.to_s
      logger.info "semester:"+@semesters[4].id.to_s+" hash:"+@subjects_ocupation5.to_s
      logger.info "semester:"+@semesters[5].id.to_s+" hash:"+@subjects_ocupation6.to_s
      
      @subject_students_prom = Hash.new
      @subject_students_prom_per = Hash.new
      @subject_groups = Hash.new
      @subjects_suggested = Array.new
      @subjects.each do |subject|

                logger.info "subject:"+subject.id.to_s
                students1 = @subjects_ocupation1[subject.id]
                students2 = @subjects_ocupation2[subject.id]
                students3 = @subjects_ocupation3[subject.id]
                students4 = @subjects_ocupation4[subject.id]
                students5 = @subjects_ocupation5[subject.id]
                students6 = @subjects_ocupation6[subject.id]
                #logger.info "students:"+students.to_s
                if students1.nil?
                  students1 = 0
                end
                if students2.nil?
                  students2 = 0
                end
                if students3.nil?
                  students3 = 0
                end
                if students4.nil?
                  students4 = 0
                end
                if students5.nil?
                  students5 = 0
                end
                if students6.nil?
                  students6 = 0
                end
                
                logger.info "student1:"+students1.to_s
                logger.info "student2:"+students2.to_s
                logger.info "student3:"+students3.to_s
                logger.info "student4:"+students4.to_s
                logger.info "student5:"+students5.to_s
                logger.info "student6:"+students6.to_s
                
                prom = (students1+students2+students3+students4+students5+students6)/6
                
                logger.info "prom:"+prom.to_s
                
                prom_per = (prom * 100)/subject.quota
                logger.info "prom_per:"+prom_per.to_s
                if(prom_per > params[:percentage].to_f)
                  @subject_students_prom[subject.id]=prom
                  @subject_students_prom_per[subject.id]=prom_per
                  @subjects_suggested.push(subject)
                  group = prom.to_f/subject.quota.to_f
                  @subject_groups[subject.id]=group.ceil.to_s
                end


      end

      logger.info "@subject_students_prom:"+@subject_students_prom.to_s
      logger.info "@subject_students_prom_per:"+@subject_students_prom_per.to_s
      logger.info "@subjects_suggested"+@subjects_suggested.to_s    
      logger.info "@subjects_suggested_groups"+@subject_groups.to_s 
     
  end
  
end
