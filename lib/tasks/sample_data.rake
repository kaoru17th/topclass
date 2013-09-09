namespace :db do
  desc "Fill database with sample data"
  task populate: :environment do
    User.create!(firstname: "Diego", lastname:"Gonzalez", code:"200012581", identificationtype:"CC", identification:"80123456", status:"Activo", usertype:"Estudiante", password:"test12345", password_confirmation: "test12345", email:"da.gonzalez13@uniandes.edu.co")
    User.create!(firstname: "Admin", lastname:"Admin", code:"200012581", identificationtype:"CC", identification:"80123456", status:"Activo", usertype:"Coordinador", password:"test12345", password_confirmation: "test12345", email:"da.gonzalez14@uniandes.edu.co")
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
  end
end