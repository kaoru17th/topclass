class SubjectRecord < ActiveRecord::Base
    belongs_to :user
    belongs_to :subject
    belongs_to :semester
    
    belongs_to :user_student, :class_name => 'User', :foreign_key => 'user_student_id'
    belongs_to :user_teacher, :class_name => 'User', :foreign_key => 'user_teacher_id'
    
    #has_many :users
    
    validates :user_student_id, presence: true
    validates :semester_id, presence: true
    validates :subject_id, presence: true
    validates :status, presence: true
    validates :user_teacher_id, presence: true
    validates :grade, presence: true, numericality: { greater_than_or_equal_to: 0 }
end
