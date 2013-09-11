# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :user_program do
    user
    program
    status "Activo"
  end
end
