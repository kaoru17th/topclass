# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :subject_semester do
    subject_id 1
    semester_id 1
    status "MyString"
  end
end
