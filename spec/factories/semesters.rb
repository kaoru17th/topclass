# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :semester do
    sequence(:name) { |n| "2014-01#{n}"}
    startdate "2014-01-01"
    finaldate "2014-05-01"
    status "Activo"
  end
end