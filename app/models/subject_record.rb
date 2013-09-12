class SubjectRecord < ActiveRecord::Base
    belongs_to :user
    belongs_to :subject
    belongs_to :semester
    
    
    validates :user_id_student, presence: true
    validates :semester_id, presence: true
    validates :subject_id, presence: true
    validates :status, presence: true
    validates :user_id_teacher, presence: true
    validates :grade, presence: true, numericality: { only_integer: true, greater_than_or_equal_to: 0 }
end
