namespace :db do
  desc "Fill database with sample data"
  task populate: :environment do

    Program.delete_all

    Program.create!(name: "Maestría en Arquitectura de Tecnologías de Información", code:"SNIES 101531", objective:"Las tecnologías de información (TI) se han convertido en el motor de las organizaciones", status:"Activo",user_id:2)
    Program.create!(name: "Maestría en Ingeniería de Sistemas y Computación", code:"SNIES 1579", objective:"Conscientes de la evolución de la informática y su rol e impacto en el mundo actual", status:"Activo",user_id:2)
    Program.create!(name: "Maestría en Ingeniería de Software", code:"SNIES 102073", objective:"A nivel mundial, la industria de software es crítica para el crecimiento económico y la innovación", status:"Activo",user_id:2)
    Program.create!(name: "Maestría en Seguridad de la Información", code:"SNIES 102074", objective:"La sociedad depende del manejo apropiado de la información y de las tecnologías", status:"Activo",user_id:2)
    Program.create!(name: "Maestría en Tecnologías de Información para el Negocio", code:"SNIES 102269", objective:"En los últimos años, las Tecnologías de Información (TI)", status:"Activo",user_id:2)
    
    Subject.delete_all

    Subject.create!(name: "Arquitectura de Negocio & Estrategia de TI", code:"ARTI-4103", quota:30, credits:4, status:"Activo") 
    Subject.create!(name: "Gerencia de proyectos para arquitectos", code:"ARTI-4101", quota:30, credits:4, status:"Activo") 
    Subject.create!(name: "Comunicacion efectiva para arquitectos", code:"ARTI-4102", quota:30, credits:4, status:"Activo") 
    Subject.create!(name: "Fundamentos para arquitectos", code:"ARTI-4104", quota:30, credits:4, status:"Activo") 
    Subject.create!(name: "Arquitectura de procesos de negocio", code:"ARTI-4205", quota:30, credits:4, status:"Activo") 
    Subject.create!(name: "Arquitectura empresarial", code:"ARTI-4106", quota:30, credits:4, status:"Activo") 
    Subject.create!(name: "Arquitectura de infraestructura", code:"ARTI-4203", quota:30, credits:4, status:"Activo") 
    Subject.create!(name: "Arquitectura de seguridad", code:"ARTI-4204", quota:30, credits:4, status:"Activo") 
    Subject.create!(name: "Arquitectura de solucion", code:"ARTI-4201", quota:30, credits:4, status:"Activo") 
    Subject.create!(name: "Arquitectura de informacion", code:"ARTI-4202", quota:30, credits:4, status:"Activo") 
    Subject.create!(name: "Proyecto", code:"ARTI-4301", quota:30, credits:4, status:"Activo") 
    
    Subject.create!(name: "Mejoramiento de la productividad", code:"MISO-4202", quota:30, credits:4, status:"Activo") 
    Subject.create!(name: "Gestion de proyectos de desarrollo de software", code:"MISO-4203", quota:30, credits:4, status:"Activo") 
    Subject.create!(name: "Fabricacion de software", code:"MISO-4204", quota:30, credits:4, status:"Activo")     
    Subject.create!(name: "Mejoramiento de la experiencia de usuario", code:"MISO-4205", quota:30, credits:4, status:"Activo") 
    Subject.create!(name: "Procesos de desarrollo agiles", code:"MISO-4101", quota:30, credits:4, status:"Activo") 
    Subject.create!(name: "Proyecto Integrador", code:"MISO-4301", quota:30, credits:4, status:"Activo") 
    
    Semester.delete_all


    Semester.create!(name: "2014-01", status:"Activo",startdate:"2014-01-01", finaldate:"2014-05-31", stype:"normal")
    Semester.create!(name: "2014-02", status:"Activo",startdate:"2014-06-01", finaldate:"2014-07-31", stype:"inter")
    Semester.create!(name: "2014-03", status:"Activo",startdate:"2014-08-01", finaldate:"2014-11-31", stype:"normal")
    Semester.create!(name: "2015-01", status:"Activo",startdate:"2015-01-01", finaldate:"2015-05-31", stype:"normal")
    Semester.create!(name: "2015-02", status:"Activo",startdate:"2015-06-01", finaldate:"2015-07-31", stype:"inter")
    Semester.create!(name: "2015-03", status:"Activo",startdate:"2015-08-01", finaldate:"2015-11-31", stype:"normal")
    Semester.create!(name: "2016-01", status:"Activo",startdate:"2016-01-01", finaldate:"2016-05-31", stype:"normal")
    Semester.create!(name: "2016-02", status:"Activo",startdate:"2016-06-01", finaldate:"2016-07-31", stype:"inter")
    Semester.create!(name: "2016-03", status:"Activo",startdate:"2016-08-01", finaldate:"2016-11-31", stype:"normal")
    
    Semester.create!(name: "2012-01", status:"Activo",startdate:"2012-01-01", finaldate:"2012-05-31", stype:"normal")
    Semester.create!(name: "2012-02", status:"Activo",startdate:"2012-06-01", finaldate:"2012-07-31", stype:"inter")
    Semester.create!(name: "2012-03", status:"Activo",startdate:"2012-08-01", finaldate:"2012-11-31", stype:"normal")
    Semester.create!(name: "2013-01", status:"Activo",startdate:"2013-01-01", finaldate:"2013-05-31", stype:"normal")
    Semester.create!(name: "2013-02", status:"Activo",startdate:"2013-06-01", finaldate:"2013-07-31", stype:"inter")
    Semester.create!(name: "2013-03", status:"Activo",startdate:"2013-08-01", finaldate:"2013-11-31", stype:"normal")
    
    User.delete_all

    User.create!(firstname: "Diego", lastname:"Gonzalez", code:"200012581", identificationtype:"CC", identification:"80123456", status:"Activo", usertype:"Estudiante", password:"test12345", password_confirmation: "test12345", email:"da.gonzalez13@uniandes.edu.co")
    User.create!(firstname: "Coordinador", lastname:"Coordinador", code:"200012581", identificationtype:"CC", identification:"80123456", status:"Activo", usertype:"Coordinador", password:"test12345", password_confirmation: "test12345", email:"kaoru17th@gmail.com")
    User.create!(firstname: "Admin", lastname:"Admin", code:"200012581", identificationtype:"CC", identification:"80123456", status:"Activo", usertype:"Admin", password:"test12345", password_confirmation: "test12345", email:"admin@zyos.co")
    User.create!(firstname: "Profesor", lastname:"Profesor", code:"200012581", identificationtype:"CC", identification:"80123456", status:"Activo", usertype:"Profesor", password:"test12345", password_confirmation: "test12345", email:"da.gonzalez15@uniandes.edu.co")
    99.times do |n|
      firstname  = Faker::Name.first_name
      lastname = Faker::Name.last_name
      code = "20122173#{n+1}"
      identification = Faker::Address.zip_code
      email = "example-#{n+1}@uniandes.edu.co"
      password  = "password"
      User.create!(firstname: firstname, lastname:lastname, code:code, 
      identificationtype:"CC", identification:identification, status:"Activo", 
      usertype:"Estudiante", password:password, password_confirmation:password, email:email)
    end
    
    QuotaConfig.delete_all
    
    QuotaConfig.create!(subject_id: "1", own_quota: "50", program_quota:"30", pregrade_quota:"20")
    
    
    #Poblar Program Semester con toda la info
    ProgramSemester.delete_all
    
    ProgramSemester.create!(program_id: "1", semester_id: "1", status: "Activo")
    ProgramSemester.create!(program_id: "1", semester_id: "2", status: "Activo")
    ProgramSemester.create!(program_id: "1", semester_id: "3", status: "Activo")
    ProgramSemester.create!(program_id: "1", semester_id: "4", status: "Activo")
    ProgramSemester.create!(program_id: "1", semester_id: "5", status: "Activo")
    ProgramSemester.create!(program_id: "1", semester_id: "6", status: "Activo")
    ProgramSemester.create!(program_id: "1", semester_id: "7", status: "Activo")
    ProgramSemester.create!(program_id: "1", semester_id: "8", status: "Activo")
    ProgramSemester.create!(program_id: "1", semester_id: "9", status: "Activo")
    ProgramSemester.create!(program_id: "1", semester_id: "10", status: "Activo")
    ProgramSemester.create!(program_id: "1", semester_id: "11", status: "Activo")
    ProgramSemester.create!(program_id: "1", semester_id: "12", status: "Activo")
    ProgramSemester.create!(program_id: "1", semester_id: "13", status: "Activo")
    ProgramSemester.create!(program_id: "1", semester_id: "14", status: "Activo")
    ProgramSemester.create!(program_id: "1", semester_id: "15", status: "Activo")
    
    ProgramSemester.create!(program_id: "2", semester_id: "1", status: "Activo")
    ProgramSemester.create!(program_id: "2", semester_id: "2", status: "Activo")


    UserProgram.delete_all
    
    UserProgram.create!(program_id: "2", user_id: 1, status: "Activo")
    
    count = 0
    50.times do |n|
        UserProgram.create!(program_id: "1", user_id: "#{count+1}", status: "Activo")
        count = count+1
    end

    30.times do |n|
        UserProgram.create!(program_id: "2", user_id: "#{count+1}", status: "Activo")
        count = count+1
    end

    30.times do |n|
        UserProgram.create!(program_id: "3", user_id: "#{count+1}", status: "Activo")
        count = count+1
    end

    40.times do |n|
        UserProgram.create!(program_id: "4", user_id: "#{count+1}", status: "Activo")
        count = count+1
    end

    60.times do |n|
        UserProgram.create!(program_id: "5", user_id: "#{count+1}", status: "Activo")
        count = count+1
    end

    SubjectProgram.delete_all
    
    SubjectProgram.create!(subject_id:"1", program_id: "1", status:"Activo", subjecttype:"Opcional")
    SubjectProgram.create!(subject_id:"2", program_id: "1", status:"Activo", subjecttype:"Opcional")
    SubjectProgram.create!(subject_id:"3", program_id: "1", status:"Activo", subjecttype:"Opcional")
    SubjectProgram.create!(subject_id:"4", program_id: "1", status:"Activo", subjecttype:"Opcional")
    SubjectProgram.create!(subject_id:"5", program_id: "1", status:"Activo", subjecttype:"Opcional")
    SubjectProgram.create!(subject_id:"6", program_id: "1", status:"Activo", subjecttype:"Opcional")
    SubjectProgram.create!(subject_id:"7", program_id: "1", status:"Activo", subjecttype:"Opcional")
    SubjectProgram.create!(subject_id:"8", program_id: "1", status:"Activo", subjecttype:"Opcional")
    SubjectProgram.create!(subject_id:"9", program_id: "1", status:"Activo", subjecttype:"Opcional")
    SubjectProgram.create!(subject_id:"10", program_id: "1", status:"Activo", subjecttype:"Opcional")
    SubjectProgram.create!(subject_id:"12", program_id: "1", status:"Activo", subjecttype:"Electiva")
    SubjectProgram.create!(subject_id:"13", program_id: "1", status:"Activo", subjecttype:"Electiva")
    SubjectProgram.create!(subject_id:"14", program_id: "1", status:"Activo", subjecttype:"Electiva")
    SubjectProgram.create!(subject_id:"15", program_id: "1", status:"Activo", subjecttype:"Electiva")
    SubjectProgram.create!(subject_id:"16", program_id: "1", status:"Activo", subjecttype:"Electiva")
    SubjectProgram.create!(subject_id:"11", program_id: "1", status:"Activo", subjecttype:"Obligatoria")
    
    
    SubjectSemester.delete_all
    PreregisterSubject.delete_all
    SubjectRecord.delete_all
    
    #JULIAN POBLAR
    15.times do |n|
      SubjectProgram.create!(subject_id:"#{n+1}", program_id: "2", status:"Activo", subjecttype:"Opcional")
      SubjectSemester.create!(subject_id:"#{n+1}", semester_id: "2", status:"Activo")
    end

    16.times do |n|
      SubjectSemester.create!(subject_id:"#{n+1}", semester_id: "3", status:"Activo")
      SubjectSemester.create!(subject_id:"#{n+1}", semester_id: "4", status:"Activo")
      SubjectSemester.create!(subject_id:"#{n+1}", semester_id: "5", status:"Activo")
      SubjectSemester.create!(subject_id:"#{n+1}", semester_id: "6", status:"Activo")
      SubjectSemester.create!(subject_id:"#{n+1}", semester_id: "7", status:"Activo")
      SubjectSemester.create!(subject_id:"#{n+1}", semester_id: "8", status:"Activo")
      SubjectSemester.create!(subject_id:"#{n+1}", semester_id: "9", status:"Activo")
      SubjectSemester.create!(subject_id:"#{n+1}", semester_id: "10", status:"Activo")
      SubjectSemester.create!(subject_id:"#{n+1}", semester_id: "11", status:"Activo")
      SubjectSemester.create!(subject_id:"#{n+1}", semester_id: "12", status:"Activo")
      SubjectSemester.create!(subject_id:"#{n+1}", semester_id: "13", status:"Activo")
      SubjectSemester.create!(subject_id:"#{n+1}", semester_id: "14", status:"Activo")
      SubjectSemester.create!(subject_id:"#{n+1}", semester_id: "15", status:"Activo")
    end
    
    SubjectSemester.create!(subject_id:"1", semester_id: "1", status:"Activo")
    SubjectSemester.create!(subject_id:"2", semester_id: "1", status:"Activo")
    SubjectSemester.create!(subject_id:"3", semester_id: "1", status:"Activo")
    SubjectSemester.create!(subject_id:"4", semester_id: "1", status:"Activo")
    SubjectSemester.create!(subject_id:"5", semester_id: "1", status:"Activo")
    SubjectSemester.create!(subject_id:"6", semester_id: "1", status:"Activo")
    SubjectSemester.create!(subject_id:"7", semester_id: "1", status:"Activo")
    SubjectSemester.create!(subject_id:"8", semester_id: "1", status:"Activo")
    SubjectSemester.create!(subject_id:"9", semester_id: "1", status:"Activo")
    SubjectSemester.create!(subject_id:"10", semester_id: "1", status:"Activo")
    SubjectSemester.create!(subject_id:"11", semester_id: "1", status:"Activo")
    SubjectSemester.create!(subject_id:"12", semester_id: "1", status:"Activo")
    SubjectSemester.create!(subject_id:"13", semester_id: "1", status:"Activo")
    SubjectSemester.create!(subject_id:"13", semester_id: "1", status:"Activo")
    SubjectSemester.create!(subject_id:"14", semester_id: "1", status:"Activo")
    SubjectSemester.create!(subject_id:"15", semester_id: "1", status:"Activo")
    SubjectSemester.create!(subject_id:"16", semester_id: "1", status:"Activo")
    SubjectSemester.create!(subject_id:"17", semester_id: "1", status:"Activo")
    
    
    
    
    
    
    
    40.times do |n|
        PreregisterSubject.create!(semester_id:"1", subject_id: "14", user_id:"#{n+1}", status:"Pendiente", program_id:"1")
        PreregisterSubject.create!(semester_id:"2", subject_id: "1", user_id:"#{n+1}", status:"Pendiente", program_id:"1")
    end
    40.times do |n|
        PreregisterSubject.create!(semester_id:"1", subject_id: "17", user_id:"#{n+1}", status:"Pendiente", program_id:"1")
        PreregisterSubject.create!(semester_id:"2", subject_id: "11", user_id:"#{n+1}", status:"Pendiente", program_id:"1")
    end
    
    16.times do |n|
        PreregisterSubject.create!(semester_id:"1", subject_id: "#{n+1}", user_id:"#{n+1}", status:"Pendiente", program_id:"1")
        PreregisterSubject.create!(semester_id:"2", subject_id: "#{n+1}", user_id:"#{n+1}", status:"Pendiente", program_id:"1")
    end
    
    
    #Forecast information
    #semester 10
    15.times do |n|
        PreregisterSubject.create!(semester_id:"10", subject_id: "1", user_id:"#{n+1}", status:"Aprobada", program_id:"1")
        PreregisterSubject.create!(semester_id:"10", subject_id: "2", user_id:"#{n+1}", status:"Aprobada", program_id:"1")
        PreregisterSubject.create!(semester_id:"10", subject_id: "3", user_id:"#{n+1}", status:"Aprobada", program_id:"1")
        PreregisterSubject.create!(semester_id:"10", subject_id: "4", user_id:"#{n+1}", status:"Aprobada", program_id:"1")
        PreregisterSubject.create!(semester_id:"10", subject_id: "5", user_id:"#{n+1}", status:"Aprobada", program_id:"1")
        PreregisterSubject.create!(semester_id:"10", subject_id: "6", user_id:"#{n+1}", status:"Aprobada", program_id:"1")
        PreregisterSubject.create!(semester_id:"10", subject_id: "7", user_id:"#{n+1}", status:"Aprobada", program_id:"1")
        PreregisterSubject.create!(semester_id:"10", subject_id: "8", user_id:"#{n+1}", status:"Aprobada", program_id:"1")
        PreregisterSubject.create!(semester_id:"10", subject_id: "9", user_id:"#{n+1}", status:"Aprobada", program_id:"1")
        
        
        PreregisterSubject.create!(semester_id:"11", subject_id: "1", user_id:"#{n+1}", status:"Aprobada", program_id:"1")
        PreregisterSubject.create!(semester_id:"11", subject_id: "2", user_id:"#{n+1}", status:"Aprobada", program_id:"1")
        PreregisterSubject.create!(semester_id:"11", subject_id: "3", user_id:"#{n+1}", status:"Aprobada", program_id:"1")
        PreregisterSubject.create!(semester_id:"11", subject_id: "4", user_id:"#{n+1}", status:"Aprobada", program_id:"1")
        PreregisterSubject.create!(semester_id:"11", subject_id: "5", user_id:"#{n+1}", status:"Aprobada", program_id:"1")

        
        PreregisterSubject.create!(semester_id:"12", subject_id: "1", user_id:"#{n+1}", status:"Aprobada", program_id:"1")
        PreregisterSubject.create!(semester_id:"12", subject_id: "2", user_id:"#{n+1}", status:"Aprobada", program_id:"1")
        PreregisterSubject.create!(semester_id:"12", subject_id: "3", user_id:"#{n+1}", status:"Aprobada", program_id:"1")
        PreregisterSubject.create!(semester_id:"12", subject_id: "4", user_id:"#{n+1}", status:"Aprobada", program_id:"1")
        PreregisterSubject.create!(semester_id:"12", subject_id: "5", user_id:"#{n+1}", status:"Aprobada", program_id:"1")
        PreregisterSubject.create!(semester_id:"12", subject_id: "6", user_id:"#{n+1}", status:"Aprobada", program_id:"1")
        PreregisterSubject.create!(semester_id:"12", subject_id: "7", user_id:"#{n+1}", status:"Aprobada", program_id:"1")
        PreregisterSubject.create!(semester_id:"12", subject_id: "8", user_id:"#{n+1}", status:"Aprobada", program_id:"1")
        PreregisterSubject.create!(semester_id:"12", subject_id: "9", user_id:"#{n+1}", status:"Aprobada", program_id:"1")
        
        PreregisterSubject.create!(semester_id:"13", subject_id: "1", user_id:"#{n+1}", status:"Aprobada", program_id:"1")
        PreregisterSubject.create!(semester_id:"13", subject_id: "2", user_id:"#{n+1}", status:"Aprobada", program_id:"1")
        PreregisterSubject.create!(semester_id:"13", subject_id: "3", user_id:"#{n+1}", status:"Aprobada", program_id:"1")
        PreregisterSubject.create!(semester_id:"13", subject_id: "8", user_id:"#{n+1}", status:"Aprobada", program_id:"1")
        PreregisterSubject.create!(semester_id:"13", subject_id: "9", user_id:"#{n+1}", status:"Aprobada", program_id:"1")
        
        PreregisterSubject.create!(semester_id:"14", subject_id: "1", user_id:"#{n+1}", status:"Aprobada", program_id:"1")
        PreregisterSubject.create!(semester_id:"14", subject_id: "2", user_id:"#{n+1}", status:"Aprobada", program_id:"1")
        PreregisterSubject.create!(semester_id:"14", subject_id: "3", user_id:"#{n+1}", status:"Aprobada", program_id:"1")
        PreregisterSubject.create!(semester_id:"14", subject_id: "6", user_id:"#{n+1}", status:"Aprobada", program_id:"1")
        PreregisterSubject.create!(semester_id:"14", subject_id: "7", user_id:"#{n+1}", status:"Aprobada", program_id:"1")
        PreregisterSubject.create!(semester_id:"14", subject_id: "8", user_id:"#{n+1}", status:"Aprobada", program_id:"1")
        PreregisterSubject.create!(semester_id:"14", subject_id: "9", user_id:"#{n+1}", status:"Aprobada", program_id:"1")
        
        PreregisterSubject.create!(semester_id:"15", subject_id: "1", user_id:"#{n+1}", status:"Aprobada", program_id:"1")
        PreregisterSubject.create!(semester_id:"15", subject_id: "2", user_id:"#{n+1}", status:"Aprobada", program_id:"1")
        PreregisterSubject.create!(semester_id:"15", subject_id: "3", user_id:"#{n+1}", status:"Aprobada", program_id:"1")
        PreregisterSubject.create!(semester_id:"15", subject_id: "4", user_id:"#{n+1}", status:"Aprobada", program_id:"1")
        PreregisterSubject.create!(semester_id:"15", subject_id: "5", user_id:"#{n+1}", status:"Aprobada", program_id:"1")
        PreregisterSubject.create!(semester_id:"15", subject_id: "6", user_id:"#{n+1}", status:"Aprobada", program_id:"1")
        PreregisterSubject.create!(semester_id:"15", subject_id: "7", user_id:"#{n+1}", status:"Aprobada", program_id:"1")
        PreregisterSubject.create!(semester_id:"15", subject_id: "8", user_id:"#{n+1}", status:"Aprobada", program_id:"1")
        PreregisterSubject.create!(semester_id:"15", subject_id: "9", user_id:"#{n+1}", status:"Aprobada", program_id:"1")
        
        
        
        PreregisterSubject.create!(semester_id:"10", subject_id: "1", user_id:"#{n+1}", status:"Aprobada", program_id:"1")
        PreregisterSubject.create!(semester_id:"10", subject_id: "2", user_id:"#{n+1}", status:"Aprobada", program_id:"1")
        PreregisterSubject.create!(semester_id:"10", subject_id: "3", user_id:"#{n+1}", status:"Aprobada", program_id:"1")
        PreregisterSubject.create!(semester_id:"10", subject_id: "9", user_id:"#{n+1}", status:"Aprobada", program_id:"1")
        
        
        PreregisterSubject.create!(semester_id:"11", subject_id: "1", user_id:"#{n+1}", status:"Aprobada", program_id:"1")
        PreregisterSubject.create!(semester_id:"11", subject_id: "5", user_id:"#{n+1}", status:"Aprobada", program_id:"1")

        
        PreregisterSubject.create!(semester_id:"12", subject_id: "1", user_id:"#{n+1}", status:"Aprobada", program_id:"1")
        PreregisterSubject.create!(semester_id:"12", subject_id: "2", user_id:"#{n+1}", status:"Aprobada", program_id:"1")
        PreregisterSubject.create!(semester_id:"12", subject_id: "3", user_id:"#{n+1}", status:"Aprobada", program_id:"1")
        PreregisterSubject.create!(semester_id:"12", subject_id: "4", user_id:"#{n+1}", status:"Aprobada", program_id:"1")

        
        PreregisterSubject.create!(semester_id:"13", subject_id: "8", user_id:"#{n+1}", status:"Aprobada", program_id:"1")
        PreregisterSubject.create!(semester_id:"13", subject_id: "9", user_id:"#{n+1}", status:"Aprobada", program_id:"1")
        

        PreregisterSubject.create!(semester_id:"14", subject_id: "7", user_id:"#{n+1}", status:"Aprobada", program_id:"1")
        PreregisterSubject.create!(semester_id:"14", subject_id: "8", user_id:"#{n+1}", status:"Aprobada", program_id:"1")
        PreregisterSubject.create!(semester_id:"14", subject_id: "9", user_id:"#{n+1}", status:"Aprobada", program_id:"1")
        
        PreregisterSubject.create!(semester_id:"15", subject_id: "1", user_id:"#{n+1}", status:"Aprobada", program_id:"1")
        PreregisterSubject.create!(semester_id:"15", subject_id: "7", user_id:"#{n+1}", status:"Aprobada", program_id:"1")
        PreregisterSubject.create!(semester_id:"15", subject_id: "8", user_id:"#{n+1}", status:"Aprobada", program_id:"1")
        PreregisterSubject.create!(semester_id:"15", subject_id: "9", user_id:"#{n+1}", status:"Aprobada", program_id:"1")
        
        PreregisterSubject.create!(semester_id:"10", subject_id: "1", user_id:"#{n+1}", status:"Aprobada", program_id:"1")
    end
    
    40.times do |n|
        PreregisterSubject.create!(semester_id:"10", subject_id: "1", user_id:"#{n+1}", status:"Aprobada", program_id:"1")
        PreregisterSubject.create!(semester_id:"11", subject_id: "1", user_id:"#{n+1}", status:"Aprobada", program_id:"1")
        PreregisterSubject.create!(semester_id:"12", subject_id: "1", user_id:"#{n+1}", status:"Aprobada", program_id:"1")
    end
    
    #SubjectSemester.create!(subject_id:"1", semester_id: "1", status:"Activo")
    #PreregisterSubject.create!(user_id: "1", semester_id: "1", subject_id: "1" , status: "Activa")
    
  end
end