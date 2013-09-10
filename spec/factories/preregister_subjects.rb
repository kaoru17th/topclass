# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :preregister_subject do
    semester_id 1
    subject_id 1
    user_id_student 1
    status "MyString"
  end
end
