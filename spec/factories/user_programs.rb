# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :user_program do
    user_id 1
    program_id 1
    status "MyString"
  end
end
