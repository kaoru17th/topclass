# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :teacher_subject do
    user_id 1
    subject_id 1
    status "MyString"
  end
end
