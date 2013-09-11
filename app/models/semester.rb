class Semester < ActiveRecord::Base
  before_save { self.name = name.upcase }
  
  validates :name, presence: true, length: { maximum: 50 },  uniqueness: { case_sensitive: false }
  validates :startdate, presence: true
  validates :finaldate, presence: true
  validates :status, presence: true
end
