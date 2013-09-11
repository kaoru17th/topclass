class Semester < ActiveRecord::Base
  
  validates :name, presence: true, length: { maximum: 50 }
  validates :startdate, presence: true
  validates :finaldate, presence: true
  validates :status, presence: true

  has_many :program_semesters
  has_many :programs , :through => :program_semesters
end
