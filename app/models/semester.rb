class Semester < ActiveRecord::Base
  before_save { self.name = name.upcase }
  
  validates :name, presence: true, length: { maximum: 50 },  uniqueness: { case_sensitive: false }
  validates :startdate, presence: true
  validates :finaldate, presence: true
  validates :status, presence: true
  
  has_many :program_semesters
  has_many :programs , :through => :program_semesters
  
  has_many :subject_semesters
  has_many :subjects , :through => :subject_semesters
  
  has_many :preregister_subjects
end
