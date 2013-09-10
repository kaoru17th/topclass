# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :program_semester do
    program_id 1
    semester_id 1
    status "MyString"
  end
end
