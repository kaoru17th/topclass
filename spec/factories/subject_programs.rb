# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :subject_program do
    subject_id 1
    program_id 1
    status "MyString"
    subjecttype "MyString"
  end
end
