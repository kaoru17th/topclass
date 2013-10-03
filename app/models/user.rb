class User < ActiveRecord::Base

  before_save { self.email = email.downcase }

  validates :firstname,  presence: true, length: { maximum: 100 }
  validates :lastname, presence: true, length: { maximum: 100 }
  validates :identificationtype, presence: true
  validates :identification, presence: true, length: { maximum: 20 }
  validates :status, presence: true
  validates :usertype, presence: true
  VALID_EMAIL_REGEX = /\A[\w+\-.]+@[a-z\d\-.]+\.[a-z]+\z/i
  validates :email, presence: true, format: { with: VALID_EMAIL_REGEX },uniqueness: { case_sensitive: false }
  validates :password, length: { minimum: 6 }
  
  has_secure_password
  
  def admin?
    self.usertype == "Coordinador"
  end 
  
  has_many :user_programs
  has_many :programs, :through => :user_programs
  
  has_many :teacher_subjects
  has_many :subjects, :through => :teacher_subjects
  
  
  has_many :subject_records, :class_name => 'SubjectRecord', :foreign_key => 'user_student_id'
  has_many :preregister_subjects
  
  has_one :program
  
  
  
end
