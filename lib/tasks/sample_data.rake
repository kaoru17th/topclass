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
    
    49.times do |n|
      firstname = Faker::Name.first_name
      lastname = Faker::Name.last_name
      code = "20121173#{n+1}"
      identification = Faker::Address.zip_code
      email = "example-#{n+1}@uniandes.edu.co"
      password = "password"
      User.create!(firstname: firstname, lastname:lastname, code:code,
      identificationtype:"CC", identification:identification, status:"Activo",
      usertype:"Estudiante", password:password, password_confirmation:password, email:email)
    end
    
    50.times do |n|
      firstname = Faker::Name.first_name
      lastname = Faker::Name.last_name
      code = "20122173#{n+1}"
      identification = Faker::Address.zip_code
      email = "example2-#{n+1}@uniandes.edu.co"
      password = "password"
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
    
    #SubjectSemester.create!(subject_id:"1", semester_id: "1", status:"Activo")
    
    #SubjectRecord.create!(user_student_id: "1", semester_id: "1", subject_id: "1" ,user_teacher_id: "1", status: "Passed", grade: 3.5)
    
    #PreregisterSubject.create!(user_id: "1", semester_id: "1", subject_id: "1" , status: "Activa")
    
    
    ##JSON MONITOR
    
        User.create!(firstname: "MAGDIEL WILDER", lastname:"MARTINEZ ANGULO", code:"201310366", identificationtype:"CC", identification:"80123456", status:"Activo", usertype:"Estudiante", password:"test12345", password_confirmation: "test12345", email:"test1@uniandes.edu.co")
    PreregisterSubject.create!(semester_id:"13", subject_id: "2", user_id:"104", status:"Aprobada", program_id:"1")
  PreregisterSubject.create!(semester_id:"13", subject_id: "5", user_id:"104", status:"Aprobada", program_id:"1")
  PreregisterSubject.create!(semester_id:"14", subject_id: "4", user_id:"104", status:"Aprobada", program_id:"1")
  PreregisterSubject.create!(semester_id:"15", subject_id: "9", user_id:"104", status:"Aprobada", program_id:"1")
  PreregisterSubject.create!(semester_id:"15", subject_id: "1", user_id:"104", status:"Aprobada", program_id:"1")
    
    User.create!(firstname: "JHON JAIRO", lastname:"SANCHEZ MENDIETA", code:"201329412", identificationtype:"CC", identification:"80123456", status:"Activo", usertype:"Estudiante", password:"test12345", password_confirmation: "test12345", email:"test2@uniandes.edu.co")
  PreregisterSubject.create!(semester_id:"15", subject_id: "9", user_id:"105", status:"Aprobada", program_id:"1")


    User.create!(firstname: "GEIDER HERNAN", lastname:"NIVIA MUNOZ", code:"201310404", identificationtype:"CC", identification:"80123456", status:"Activo", usertype:"Estudiante", password:"test12345", password_confirmation: "test12345", email:"test13@uniandes.edu.co")
    PreregisterSubject.create!(semester_id:"13", subject_id: "1", user_id:"106", status:"Aprobada", program_id:"1")
  PreregisterSubject.create!(semester_id:"13", subject_id: "2", user_id:"106", status:"Aprobada", program_id:"1")
  PreregisterSubject.create!(semester_id:"14", subject_id: "9", user_id:"106", status:"Aprobada", program_id:"1")
  PreregisterSubject.create!(semester_id:"15", subject_id: "7", user_id:"106", status:"Aprobada", program_id:"1")


    User.create!(firstname: "JOHAR IGNACIO", lastname:"MANTILLA BAUTISTA", code:"200910400", identificationtype:"CC", identification:"80123456", status:"Activo", usertype:"Estudiante", password:"test12345", password_confirmation: "test12345", email:"test14@uniandes.edu.co")
  PreregisterSubject.create!(semester_id:"13", subject_id: "7", user_id:"107", status:"Aprobada", program_id:"1")
  PreregisterSubject.create!(semester_id:"13", subject_id: "5", user_id:"107", status:"Aprobada", program_id:"1")
  PreregisterSubject.create!(semester_id:"15", subject_id: "2", user_id:"107", status:"Aprobada", program_id:"1")
  PreregisterSubject.create!(semester_id:"15", subject_id: "9", user_id:"107", status:"Aprobada", program_id:"1")


    User.create!(firstname: "JAVIER FERNANDO", lastname:"VERA TORRES", code:"201324692", identificationtype:"CC", identification:"80123456", status:"Activo", usertype:"Estudiante", password:"test12345", password_confirmation: "test12345", email:"test15@uniandes.edu.co")
  PreregisterSubject.create!(semester_id:"13", subject_id: "9", user_id:"108", status:"Aprobada", program_id:"1")
  PreregisterSubject.create!(semester_id:"13", subject_id: "2", user_id:"108", status:"Aprobada", program_id:"1")

    User.create!(firstname: "OSCAR ALEJANDRO", lastname:"VILLAMIL RUIZ", code:"201324693", identificationtype:"CC", identification:"80123456", status:"Activo", usertype:"Estudiante", password:"test12345", password_confirmation: "test12345", email:"test16@uniandes.edu.co")
  PreregisterSubject.create!(semester_id:"13", subject_id: "9", user_id:"109", status:"Aprobada", program_id:"1")
  PreregisterSubject.create!(semester_id:"13", subject_id: "2", user_id:"109", status:"Aprobada", program_id:"1")


    User.create!(firstname: "FREDY ORLANDO", lastname:"SANDOVAL LAGOS", code:"201310505", identificationtype:"CC", identification:"80123456", status:"Activo", usertype:"Estudiante", password:"test12345", password_confirmation: "test12345", email:"test17@uniandes.edu.co")
  PreregisterSubject.create!(semester_id:"13", subject_id: "1", user_id:"110", status:"Aprobada", program_id:"1")
  PreregisterSubject.create!(semester_id:"13", subject_id: "2", user_id:"110", status:"Aprobada", program_id:"1")
  PreregisterSubject.create!(semester_id:"15", subject_id: "9", user_id:"110", status:"Aprobada", program_id:"1")
  PreregisterSubject.create!(semester_id:"15", subject_id: "10", user_id:"110", status:"Aprobada", program_id:"1")
 

    User.create!(firstname: "BETSY KATINA", lastname:"LANCHERO BARRIOS", code:"200625245", identificationtype:"CC", identification:"80123456", status:"Activo", usertype:"Estudiante", password:"test12345", password_confirmation: "test12345", email:"test18@uniandes.edu.co")
  PreregisterSubject.create!(semester_id:"13", subject_id: "1", user_id:"111", status:"Aprobada", program_id:"1")
  PreregisterSubject.create!(semester_id:"13", subject_id: "7", user_id:"111", status:"Aprobada", program_id:"1")
  PreregisterSubject.create!(semester_id:"15", subject_id: "10", user_id:"111", status:"Aprobada", program_id:"1")
  PreregisterSubject.create!(semester_id:"15", subject_id: "5", user_id:"111", status:"Aprobada", program_id:"1")

 
    User.create!(firstname: "SANTIAGO", lastname:"VILLAVECES PARDO", code:"200813688", identificationtype:"CC", identification:"80123456", status:"Activo", usertype:"Estudiante", password:"test12345", password_confirmation: "test12345", email:"test19@uniandes.edu.co")
  PreregisterSubject.create!(semester_id:"13", subject_id: "7", user_id:"112", status:"Aprobada", program_id:"1")
  PreregisterSubject.create!(semester_id:"13", subject_id: "5", user_id:"112", status:"Aprobada", program_id:"1")
  PreregisterSubject.create!(semester_id:"15", subject_id: "9", user_id:"112", status:"Aprobada", program_id:"1")
 

    User.create!(firstname: "ANGEE JULIETH", lastname:"ZAMBRANO GOMEZ", code:"201310543", identificationtype:"CC", identification:"80123456", status:"Activo", usertype:"Estudiante", password:"test12345", password_confirmation: "test12345", email:"test01@uniandes.edu.co")
  PreregisterSubject.create!(semester_id:"13", subject_id: "1", user_id:"113", status:"Aprobada", program_id:"1")
  PreregisterSubject.create!(semester_id:"13", subject_id: "7", user_id:"113", status:"Aprobada", program_id:"1")
  PreregisterSubject.create!(semester_id:"15", subject_id: "9", user_id:"113", status:"Aprobada", program_id:"1")
  PreregisterSubject.create!(semester_id:"15", subject_id: "10", user_id:"113", status:"Aprobada", program_id:"1")

 
    User.create!(firstname: "VIVIANA ANGELY", lastname:"BASTIDAS MELO", code:"201221724", identificationtype:"CC", identification:"80123456", status:"Activo", usertype:"Estudiante", password:"test12345", password_confirmation: "test12345", email:"test10@uniandes.edu.co")
  PreregisterSubject.create!(semester_id:"13", subject_id: "2", user_id:"114", status:"Aprobada", program_id:"1")
  PreregisterSubject.create!(semester_id:"13", subject_id: "5", user_id:"114", status:"Aprobada", program_id:"1")
  PreregisterSubject.create!(semester_id:"15", subject_id: "9", user_id:"114", status:"Aprobada", program_id:"1")
  PreregisterSubject.create!(semester_id:"15", subject_id: "10", user_id:"114", status:"Aprobada", program_id:"1")
 

    User.create!(firstname: "IVAN DAVID", lastname:"RINCON VIVAS", code:"201324674", identificationtype:"CC", identification:"80123456", status:"Activo", usertype:"Estudiante", password:"test12345", password_confirmation: "test12345", email:"test112@uniandes.edu.co")
  PreregisterSubject.create!(semester_id:"15", subject_id: "9", user_id:"115", status:"Aprobada", program_id:"1")

 
    User.create!(firstname: "CAMILO", lastname:"TELLEZ SANCHEZ", code:"200614286", identificationtype:"CC", identification:"80123456", status:"Activo", usertype:"Estudiante", password:"test12345", password_confirmation: "test12345", email:"test123@uniandes.edu.co")
  PreregisterSubject.create!(semester_id:"13", subject_id: "10", user_id:"116", status:"Aprobada", program_id:"1")
  PreregisterSubject.create!(semester_id:"13", subject_id: "5", user_id:"116", status:"Aprobada", program_id:"1")
  PreregisterSubject.create!(semester_id:"15", subject_id: "9", user_id:"116", status:"Aprobada", program_id:"1")


    User.create!(firstname: "LINA GISETH", lastname:"CASAS SALAS", code:"200911387", identificationtype:"CC", identification:"80123456", status:"Activo", usertype:"Estudiante", password:"test12345", password_confirmation: "test12345", email:"test134@uniandes.edu.co")
  PreregisterSubject.create!(semester_id:"13", subject_id: "10", user_id:"117", status:"Aprobada", program_id:"1")
  PreregisterSubject.create!(semester_id:"13", subject_id: "8", user_id:"117", status:"Aprobada", program_id:"1")
  PreregisterSubject.create!(semester_id:"15", subject_id: "9", user_id:"117", status:"Aprobada", program_id:"1")
  PreregisterSubject.create!(semester_id:"15", subject_id: "3", user_id:"117", status:"Aprobada", program_id:"1")


    User.create!(firstname: "CARLOS ALBERTO", lastname:"ENRIQUEZ ARCOS", code:"200220825", identificationtype:"CC", identification:"80123456", status:"Activo", usertype:"Estudiante", password:"test12345", password_confirmation: "test12345", email:"test145@uniandes.edu.co")
  PreregisterSubject.create!(semester_id:"12", subject_id: "1", user_id:"118", status:"Aprobada", program_id:"1")
  PreregisterSubject.create!(semester_id:"12", subject_id: "7", user_id:"118", status:"Aprobada", program_id:"1")
  PreregisterSubject.create!(semester_id:"13", subject_id: "8", user_id:"118", status:"Aprobada", program_id:"1")
  PreregisterSubject.create!(semester_id:"15", subject_id: "9", user_id:"118", status:"Aprobada", program_id:"1")
  PreregisterSubject.create!(semester_id:"15", subject_id: "2", user_id:"118", status:"Aprobada", program_id:"1")


    User.create!(firstname: "JUAN CARLOS", lastname:"LOPERA MARQUEZ", code:"200925616", identificationtype:"CC", identification:"80123456", status:"Activo", usertype:"Estudiante", password:"test12345", password_confirmation: "test12345", email:"test156@uniandes.edu.co")
  PreregisterSubject.create!(semester_id:"13", subject_id: "1", user_id:"119", status:"Aprobada", program_id:"1")
  PreregisterSubject.create!(semester_id:"13", subject_id: "2", user_id:"119", status:"Aprobada", program_id:"1")


    User.create!(firstname: "SANTIAGO", lastname:"TOVAR TALERO", code:"200713056", identificationtype:"CC", identification:"80123456", status:"Activo", usertype:"Estudiante", password:"test12345", password_confirmation: "test12345", email:"test167@uniandes.edu.co")
  PreregisterSubject.create!(semester_id:"12", subject_id: "1", user_id:"120", status:"Aprobada", program_id:"1")
  PreregisterSubject.create!(semester_id:"12", subject_id: "3", user_id:"120", status:"Aprobada", program_id:"1")
  PreregisterSubject.create!(semester_id:"13", subject_id: "2", user_id:"120", status:"Aprobada", program_id:"1")
  PreregisterSubject.create!(semester_id:"13", subject_id: "5", user_id:"120", status:"Aprobada", program_id:"1")
  PreregisterSubject.create!(semester_id:"15", subject_id: "9", user_id:"120", status:"Aprobada", program_id:"1")
  PreregisterSubject.create!(semester_id:"15", subject_id: "7", user_id:"120", status:"Aprobada", program_id:"1")


    User.create!(firstname: "WILMER MOISES", lastname:"ROMERO PRIETO", code:"201221826", identificationtype:"CC", identification:"80123456", status:"Activo", usertype:"Estudiante", password:"test12345", password_confirmation: "test12345", email:"test178@uniandes.edu.co")
  PreregisterSubject.create!(semester_id:"13", subject_id: "1", user_id:"121", status:"Aprobada", program_id:"1")
  PreregisterSubject.create!(semester_id:"13", subject_id: "2", user_id:"121", status:"Aprobada", program_id:"1")
  PreregisterSubject.create!(semester_id:"15", subject_id: "9", user_id:"121", status:"Aprobada", program_id:"1")
  PreregisterSubject.create!(semester_id:"15", subject_id: "10", user_id:"121", status:"Aprobada", program_id:"1")

 
    User.create!(firstname: "GINA ALEJANDRA", lastname:"ORDONEZ PINEROS", code:"201310411", identificationtype:"CC", identification:"80123456", status:"Activo", usertype:"Estudiante", password:"test12345", password_confirmation: "test12345", email:"test189@uniandes.edu.co")
  PreregisterSubject.create!(semester_id:"13", subject_id: "9", user_id:"122", status:"Aprobada", program_id:"1")
  PreregisterSubject.create!(semester_id:"13", subject_id: "10", user_id:"122", status:"Aprobada", program_id:"1")

    User.create!(firstname: "DIEGO IVAN ", lastname:"OLIVEROS ACOSTA", code:"201310410", identificationtype:"CC", identification:"80123456", status:"Activo", usertype:"Estudiante", password:"test12345", password_confirmation: "test12345", email:"test198@uniandes.edu.co")
  PreregisterSubject.create!(semester_id:"13", subject_id: "10", user_id:"123", status:"Aprobada", program_id:"1")
  PreregisterSubject.create!(semester_id:"13", subject_id: "5", user_id:"123", status:"Aprobada", program_id:"1")
  PreregisterSubject.create!(semester_id:"14", subject_id: "6", user_id:"123", status:"Aprobada", program_id:"1")
  PreregisterSubject.create!(semester_id:"15", subject_id: "9", user_id:"123", status:"Aprobada", program_id:"1")
  PreregisterSubject.create!(semester_id:"15", subject_id: "1", user_id:"123", status:"Aprobada", program_id:"1")

    User.create!(firstname: "WILLIAM", lastname:"ALTUZARRA NORIEGA", code:"200125103", identificationtype:"CC", identification:"80123456", status:"Activo", usertype:"Estudiante", password:"test12345", password_confirmation: "test12345", email:"test176@uniandes.edu.co")
  PreregisterSubject.create!(semester_id:"13", subject_id: "9", user_id:"124", status:"Aprobada", program_id:"1")
  PreregisterSubject.create!(semester_id:"13", subject_id: "10", user_id:"124", status:"Aprobada", program_id:"1")

  
    User.create!(firstname: "RAUL ALEXANDER", lastname:"CRUZ VALLEJO", code:"201310274", identificationtype:"CC", identification:"80123456", status:"Activo", usertype:"Estudiante", password:"test12345", password_confirmation: "test12345", email:"test165@uniandes.edu.co")
  PreregisterSubject.create!(semester_id:"13", subject_id: "1", user_id:"125", status:"Aprobada", program_id:"1")
  PreregisterSubject.create!(semester_id:"13", subject_id: "2", user_id:"125", status:"Aprobada", program_id:"1")
  PreregisterSubject.create!(semester_id:"14", subject_id: "6", user_id:"125", status:"Aprobada", program_id:"1")
  PreregisterSubject.create!(semester_id:"15", subject_id: "9", user_id:"125", status:"Aprobada", program_id:"1")
  PreregisterSubject.create!(semester_id:"15", subject_id: "3", user_id:"125", status:"Aprobada", program_id:"1")


    User.create!(firstname: "FRANCISCO LUIS", lastname:"RODRIGUEZ VILLABONA", code:"201324560", identificationtype:"CC", identification:"80123456", status:"Activo", usertype:"Estudiante", password:"test12345", password_confirmation: "test12345", email:"test154@uniandes.edu.co")
  PreregisterSubject.create!(semester_id:"13", subject_id: "9", user_id:"126", status:"Aprobada", program_id:"1")
  PreregisterSubject.create!(semester_id:"13", subject_id: "2", user_id:"126", status:"Aprobada", program_id:"1")

  
    User.create!(firstname: "IVAN FELIPE", lastname:"FLOREZ BECERRA", code:"201310296", identificationtype:"CC", identification:"80123456", status:"Activo", usertype:"Estudiante", password:"test12345", password_confirmation: "test12345", email:"test143@uniandes.edu.co")
  PreregisterSubject.create!(semester_id:"13", subject_id: "1", user_id:"127", status:"Aprobada", program_id:"1")
  PreregisterSubject.create!(semester_id:"13", subject_id: "2", user_id:"127", status:"Aprobada", program_id:"1")
  PreregisterSubject.create!(semester_id:"15", subject_id: "9", user_id:"127", status:"Aprobada", program_id:"1")
  PreregisterSubject.create!(semester_id:"15", subject_id: "10", user_id:"127", status:"Aprobada", program_id:"1")


    User.create!(firstname: "JUAN SEBASTIAN", lastname:"PULIDO MOJICA", code:"200522411", identificationtype:"CC", identification:"80123456", status:"Activo", usertype:"Estudiante", password:"test12345", password_confirmation: "test12345", email:"test132@uniandes.edu.co")
  PreregisterSubject.create!(semester_id:"13", subject_id: "1", user_id:"128", status:"Aprobada", program_id:"1")
  PreregisterSubject.create!(semester_id:"13", subject_id: "2", user_id:"128", status:"Aprobada", program_id:"1")
  PreregisterSubject.create!(semester_id:"14", subject_id: "6", user_id:"128", status:"Aprobada", program_id:"1")
  PreregisterSubject.create!(semester_id:"15", subject_id: "9", user_id:"128", status:"Aprobada", program_id:"1")
  PreregisterSubject.create!(semester_id:"15", subject_id: "7", user_id:"128", status:"Aprobada", program_id:"1")
 

    User.create!(firstname: "PABLO ANDRES", lastname:"BARON RUEDA", code:"201321401", identificationtype:"CC", identification:"80123456", status:"Activo", usertype:"Estudiante", password:"test12345", password_confirmation: "test12345", email:"test121@uniandes.edu.co")
  PreregisterSubject.create!(semester_id:"15", subject_id: "2", user_id:"129", status:"Aprobada", program_id:"1")
  PreregisterSubject.create!(semester_id:"15", subject_id: "9", user_id:"129", status:"Aprobada", program_id:"1")


    User.create!(firstname: "LUIS FERNANDO", lastname:"BRACHO HOYOS", code:"201321404", identificationtype:"CC", identification:"80123456", status:"Activo", usertype:"Estudiante", password:"test12345", password_confirmation: "test12345", email:"test1555@uniandes.edu.co")
  PreregisterSubject.create!(semester_id:"13", subject_id: "9", user_id:"130", status:"Aprobada", program_id:"1")
  PreregisterSubject.create!(semester_id:"13", subject_id: "3", user_id:"130", status:"Aprobada", program_id:"1")


    User.create!(firstname: "FELIX ALBERTO", lastname:"ARIZA NINO", code:"201310198", identificationtype:"CC", identification:"80123456", status:"Activo", usertype:"Estudiante", password:"test12345", password_confirmation: "test12345", email:"test1666@uniandes.edu.co")
  PreregisterSubject.create!(semester_id:"13", subject_id: "7", user_id:"131", status:"Aprobada", program_id:"1")
  PreregisterSubject.create!(semester_id:"13", subject_id: "9", user_id:"131", status:"Aprobada", program_id:"1")


    User.create!(firstname: "JENNYFER ANDREA", lastname:"MOGOLLON MANTILLA", code:"201324660", identificationtype:"CC", identification:"80123456", status:"Activo", usertype:"Estudiante", password:"test12345", password_confirmation: "test12345", email:"test1333@uniandes.edu.co")
  PreregisterSubject.create!(semester_id:"15", subject_id: "9", user_id:"132", status:"Aprobada", program_id:"1")
  PreregisterSubject.create!(semester_id:"15", subject_id: "10", user_id:"132", status:"Aprobada", program_id:"1")


    User.create!(firstname: "MAURICIO", lastname:"AMAYA RIOS", code:"201310193", identificationtype:"CC", identification:"80123456", status:"Activo", usertype:"Estudiante", password:"test12345", password_confirmation: "test12345", email:"test1322@uniandes.edu.co")
  PreregisterSubject.create!(semester_id:"13", subject_id: "10", user_id:"133", status:"Aprobada", program_id:"1")
  PreregisterSubject.create!(semester_id:"13", subject_id: "9", user_id:"133", status:"Aprobada", program_id:"1")

    User.create!(firstname: "LAURA CAROLINA", lastname:"REYES FLOREZ", code:"200720714", identificationtype:"CC", identification:"80123456", status:"Activo", usertype:"Estudiante", password:"test12345", password_confirmation: "test12345", email:"test17644@uniandes.edu.co")
  PreregisterSubject.create!(semester_id:"13", subject_id: "9", user_id:"134", status:"Aprobada", program_id:"1")
  PreregisterSubject.create!(semester_id:"13", subject_id: "2", user_id:"134", status:"Aprobada", program_id:"1")

 
    User.create!(firstname: "VICTOR HERNAN", lastname:"RODRIGUEZ ZAMBRANO", code:"201110963", identificationtype:"CC", identification:"80123456", status:"Activo", usertype:"Estudiante", password:"test12345", password_confirmation: "test12345", email:"test13334@uniandes.edu.co")
  PreregisterSubject.create!(semester_id:"13", subject_id: "5", user_id:"135", status:"Aprobada", program_id:"1")
  PreregisterSubject.create!(semester_id:"13", subject_id: "9", user_id:"135", status:"Aprobada", program_id:"1")


    User.create!(firstname: "CARLOS", lastname:"SANABRIA BUITRAGO", code:"201221640", identificationtype:"CC", identification:"80123456", status:"Activo", usertype:"Estudiante", password:"test12345", password_confirmation: "test12345", email:"test133322221@uniandes.edu.co")
  PreregisterSubject.create!(semester_id:"13", subject_id: "5", user_id:"136", status:"Aprobada", program_id:"1")
  PreregisterSubject.create!(semester_id:"13", subject_id: "4", user_id:"136", status:"Aprobada", program_id:"1")
  PreregisterSubject.create!(semester_id:"15", subject_id: "9", user_id:"136", status:"Aprobada", program_id:"1")
  PreregisterSubject.create!(semester_id:"15", subject_id: "1", user_id:"136", status:"Aprobada", program_id:"1")


    User.create!(firstname: "BRIGITTE MARCELA", lastname:"GOMEZ MORA", code:"201310309", identificationtype:"CC", identification:"80123456", status:"Activo", usertype:"Estudiante", password:"test12345", password_confirmation: "test12345", email:"test133332@uniandes.edu.co")
  PreregisterSubject.create!(semester_id:"13", subject_id: "1", user_id:"137", status:"Aprobada", program_id:"1")
  PreregisterSubject.create!(semester_id:"13", subject_id: "7", user_id:"137", status:"Aprobada", program_id:"1")
  PreregisterSubject.create!(semester_id:"15", subject_id: "9", user_id:"137", status:"Aprobada", program_id:"1")


    User.create!(firstname: "MAYERLI", lastname:"ROMERO DIAZ", code:"200912940", identificationtype:"CC", identification:"80123456", status:"Activo", usertype:"Estudiante", password:"test12345", password_confirmation: "test12345", email:"test13456@uniandes.edu.co")
  PreregisterSubject.create!(semester_id:"13", subject_id: "9", user_id:"138", status:"Aprobada", program_id:"1")
  PreregisterSubject.create!(semester_id:"13", subject_id: "2", user_id:"138", status:"Aprobada", program_id:"1")

  UserProgram.create!(program_id: "1", user_id: 104, status: "Activo")
  UserProgram.create!(program_id: "1", user_id: 105, status: "Activo")
  UserProgram.create!(program_id: "1", user_id: 106, status: "Activo")
  UserProgram.create!(program_id: "1", user_id: 107, status: "Activo")
  UserProgram.create!(program_id: "1", user_id: 108, status: "Activo")
  UserProgram.create!(program_id: "1", user_id: 109, status: "Activo")
  UserProgram.create!(program_id: "1", user_id: 110, status: "Activo")
  UserProgram.create!(program_id: "1", user_id: 111, status: "Activo")
  UserProgram.create!(program_id: "1", user_id: 112, status: "Activo")
  UserProgram.create!(program_id: "1", user_id: 113, status: "Activo")
  UserProgram.create!(program_id: "1", user_id: 114, status: "Activo")
  UserProgram.create!(program_id: "1", user_id: 115, status: "Activo")
  UserProgram.create!(program_id: "1", user_id: 116, status: "Activo")
  UserProgram.create!(program_id: "1", user_id: 117, status: "Activo")
  UserProgram.create!(program_id: "1", user_id: 118, status: "Activo")
  UserProgram.create!(program_id: "1", user_id: 119, status: "Activo")
  UserProgram.create!(program_id: "1", user_id: 120, status: "Activo")
  UserProgram.create!(program_id: "1", user_id: 121, status: "Activo")
  UserProgram.create!(program_id: "1", user_id: 122, status: "Activo")
  UserProgram.create!(program_id: "1", user_id: 123, status: "Activo")
  UserProgram.create!(program_id: "1", user_id: 124, status: "Activo")
  UserProgram.create!(program_id: "1", user_id: 125, status: "Activo")
  UserProgram.create!(program_id: "1", user_id: 126, status: "Activo")
  UserProgram.create!(program_id: "1", user_id: 127, status: "Activo")
  UserProgram.create!(program_id: "1", user_id: 128, status: "Activo")
  UserProgram.create!(program_id: "1", user_id: 129, status: "Activo")
  UserProgram.create!(program_id: "1", user_id: 130, status: "Activo")
  UserProgram.create!(program_id: "1", user_id: 131, status: "Activo")
  UserProgram.create!(program_id: "1", user_id: 132, status: "Activo")
  UserProgram.create!(program_id: "1", user_id: 133, status: "Activo")
  UserProgram.create!(program_id: "1", user_id: 134, status: "Activo")
  UserProgram.create!(program_id: "1", user_id: 135, status: "Activo")
  UserProgram.create!(program_id: "1", user_id: 136, status: "Activo")
  UserProgram.create!(program_id: "1", user_id: 137, status: "Activo")
  UserProgram.create!(program_id: "1", user_id: 138, status: "Activo")
    
    
    
  end
end