class Semester < ActiveRecord::Base
  
  validates :name, presence: true, length: { maximum: 50 }
  validates :startdate, presence: true
  validates :finaldate, presence: true
  validates :status, presence: true
end
