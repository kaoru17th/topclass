class Program < ActiveRecord::Base
  before_save { self.code = code.upcase }
  
  validates :name, presence: true, length: { maximum: 200 }
  validates :code, presence: true, length: { maximum: 100 },  uniqueness: { case_sensitive: false }
  validates :objective, presence: true, length: { maximum: 500 }
  validates :status, presence: true

  has_many :program_semesters
  has_many :semesters, :through => :program_semesters
  
  has_many :user_programs
  has_many :users, :through => :user_programs
  
  has_many :subject_programs
  has_many :subjects, :through => :subject_programs
  
  belongs_to :user

  has_many :preregister_subjects
end
