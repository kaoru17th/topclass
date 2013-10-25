class PreregisterSubject < ActiveRecord::Base
    belongs_to :user
    belongs_to :subject
    belongs_to :semester
    belongs_to :program
    
    
    validates :user_id, presence: true
    validates :semester_id, presence: true
    validates :status, presence: true
    validates :subject_id, presence: true
    validates :program_id, presence: true
end
