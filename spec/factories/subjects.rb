# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :subject do
    name "MyString"
    code "MyString"
    quota 1
    credits 1
    status "MyString"
  end
end
