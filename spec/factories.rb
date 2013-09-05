FactoryGirl.define do
  factory :user do
    firstname "Diego" 
    lastname "Gonzalez" 
    code "200012581" 
    identificationtype "CC" 
    identification "80123456" 
    status "Activo" 
    usertype "Estudiante" 
    password "test12345" 
    password_confirmation "test12345" 
    email "da.gonzalez13@uniandes.edu.co"

  end
end