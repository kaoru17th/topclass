class UserProgram < ActiveRecord::Base
  
  validates :user_id, presence: true
  validates :program_id, presence: true
  validates :status, presence: true
  
      
  belongs_to :user
  belongs_to :program
  
end
