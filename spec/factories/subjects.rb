# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :subject do
    name "Arquitectura de Negocio Estrategia de TI"
    sequence(:code) { |n| "ARTI-41#{n}"}
    quota 1
    credits 1
    status "Activo"
  end
end
