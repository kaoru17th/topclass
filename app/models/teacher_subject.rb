class TeacherSubject < ActiveRecord::Base
  belongs_to :user
  belongs_to :subject
  
  validates :user_id, presence: true
  validates :subject_id, presence: true
  validates :status, presence: true
  
end
