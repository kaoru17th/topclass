class UserProgram < ActiveRecord::Base
  belongs_to :user
  belongs_to :program
  
  validates :user_id, presence: true
  validates :program_id, presence: true
  validates :status, presence: true
    
end
