FactoryGirl.define do
  factory :user do
    sequence(:firstname)  { |n| "First #{n}" }
    sequence(:lastname) { |n| "Last #{n}"}
    sequence(:code) { |n| "200012581#{n}"}
    identificationtype "CC" 
    sequence(:identification) { |n| "1234566#{n}"}
    status "Activo" 
    usertype "Estudiante" 
    password "test12345" 
    password_confirmation "test12345" 
    sequence(:email) { |n| "person_#{n}@example.com"}

    #firstname "Diego" 
    #lastname "Gonzalez" 
    #code "200012581" 
    #identificationtype "CC" 
    #identification "80123456" 
    #status "Activo" 
    #usertype "Estudiante" 
    #password "test12345" 
    #password_confirmation "test12345" 
    #email "da.gonzalez13@uniandes.edu.co"

  end
end