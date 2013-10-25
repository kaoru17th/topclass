class Subject < ActiveRecord::Base
  before_save { self.code = code.upcase }
   
  validates :name, presence: true, length: { maximum: 200 }
  validates :code, presence: true, length: { maximum: 100 },  uniqueness: { case_sensitive: false }
  validates :quota, presence: true, numericality: { only_integer: true, greater_than: 0 }
  validates :credits, presence: true, numericality: { only_integer: true, greater_than: 0 }
  validates :status, presence: true
  
  has_many :teacher_subjects
  has_many :users, :through => :teacher_subjects
  
  has_many :subject_semesters
  has_many :semesters , :through => :subject_semesters
  
  has_many :subject_programs
  has_many :programs, :through => :subject_programs
  
  has_one :quota_config
  
  has_many :preregister_subjects
end
