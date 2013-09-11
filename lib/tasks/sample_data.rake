namespace :db do
  desc "Fill database with sample data"
  task populate: :environment do

    User.delete_all

    User.create!(firstname: "Diego", lastname:"Gonzalez", code:"200012581", identificationtype:"CC", identification:"80123456", status:"Activo", usertype:"Estudiante", password:"test12345", password_confirmation: "test12345", email:"da.gonzalez13@uniandes.edu.co")
    User.create!(firstname: "Admin", lastname:"Admin", code:"200012581", identificationtype:"CC", identification:"80123456", status:"Activo", usertype:"Coordinador", password:"test12345", password_confirmation: "test12345", email:"da.gonzalez14@uniandes.edu.co")
    User.create!(firstname: "Profesor", lastname:"Profesor", code:"200012581", identificationtype:"CC", identification:"80123456", status:"Activo", usertype:"Profesor", password:"test12345", password_confirmation: "test12345", email:"da.gonzalez15@uniandes.edu.co")
    99.times do |n|
      firstname  = Faker::Name.first_name
      lastname = Faker::Name.last_name
      code = Faker::Address.zip_code
      identification = Faker::Address.zip_code
      email = "example-#{n+1}@uniandes.edu.co"
      password  = "password"
      User.create!(firstname: firstname, lastname:lastname, code:code, 
      identificationtype:"CC", identification:identification, status:"Activo", 
      usertype:"Estudiante", password:password, password_confirmation:password, email:email)
    end

    Program.delete_all

    Program.create!(name: "Maestría en Arquitectura de Tecnologías de Información", code:"SNIES 101531", objective:"Las tecnologías de información (TI) se han convertido en el motor de las organizaciones, apoyando tanto su operación como la toma estratégica de decisiones de negocio", status:"Activo")
    Program.create!(name: "Maestría en Ingeniería de Sistemas y Computación", code:"SNIES 1579", objective:"Conscientes de la evolución de la informática y su rol e impacto en el mundo actual, el Departamento de Ingeniería de Sistemas y Computación presenta un programa de Maestría alrededor de temáticas de punta como Computación Visual, Cloud Computing, Big Data, Gestión de Conocimiento y Computación Móvil.", status:"Activo")
    Program.create!(name: "Maestría en Ingeniería de Software", code:"SNIES 102073", objective:"A nivel mundial, la industria de software es crítica para el crecimiento económico y la innovación", status:"Activo")
    Program.create!(name: "Maestría en Seguridad de la Información", code:"SNIES 102074", objective:"La sociedad depende del manejo apropiado de la información y de las tecnologías y herramientas que permiten acceder a ella", status:"Activo")
    Program.create!(name: "Maestría en Tecnologías de Información para el Negocio", code:"SNIES 102269", objective:"En los últimos años, las Tecnologías de Información (TI) han desbordado su papel tradicional de servir de soporte para las labores administrativas y operativas de la empresa, y se han convertido en un elemento crucial para la competitividad, el crecimiento y la internacionalización", status:"Activo")
    
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

    Semester.create!(name: "2014-01", status:"Activo",startdate:"2014-01-01", finaldate:"2014-05-31")
    Semester.create!(name: "2014-02", status:"Activo",startdate:"2014-06-01", finaldate:"2014-07-31")
    Semester.create!(name: "2014-03", status:"Activo",startdate:"2014-08-01", finaldate:"2014-11-31")
    
    #Poblar Program Semester con toda la info
    ProgramSemester.delete_all
    
    ProgramSemester.create!(program_id: "1", semester_id: "1", status: "Activo")
    
    UserProgram.delete_all
    
    UserProgram.create!(program_id: "1", user_id: "1", status: "Activo")
  end
end