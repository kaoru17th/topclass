# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :quota_config do
    subject_id 1
    own_quota 1
    program_quota 1
    pregrade_quota 1
  end
end
