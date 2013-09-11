class QuotaConfig < ActiveRecord::Base
  belongs_to :subject
  
  rails generate model QuotaConfig subject_id:integer own_quota:integer program_quota:integer pregrade_quota:integer
  
  validates :subject_id, presence: true
  validates :own_quota, presence: true, numericality: { only_integer: true, greater_than_or_equal_to: 0 }
  validates :program_quota, presence: true, numericality: { only_integer: true, greater_than_or_equal_to: 0 }
  validates :pregrade_quota, presence: true, numericality: { only_integer: true, greater_than_or_equal_to: 0 }
  validates :status, presence: true
  
end
