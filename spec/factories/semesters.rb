# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :semester do
    name "2014-01"
    startdate "2014-01-01"
    finaldate "2014-05-01"
    status "Activo"
  end
end