# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :subject_record do
    semester_id 1
    user_id_student 1
    subject_id 1
    user_id_teacher 1
    grade 1.5
    status "MyString"
  end
end
