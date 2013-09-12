FactoryGirl.define do
  factory :program do
    name "Maestría en Arquitectura de Tecnologías de Información"
    sequence(:code) { |n| "SNIES 101531#{n}"}
    objective "MyString"
    status "Activo"
  end
end
