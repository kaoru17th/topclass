class PreregisterSubject < ActiveRecord::Base
    belongs_to :user
    belongs_to :subject
    belongs_to :semester
    
    
    validates :user_id_student, presence: true
    validates :semester_id, presence: true
    validates :status, presence: true
    validates :subject_id, presence: true
end
