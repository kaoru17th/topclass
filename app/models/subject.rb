class Subject < ActiveRecord::Base
  
  before_save { self.code = code.upcase }
   
  validates :name, presence: true, length: { maximum: 200 }
  validates :code, presence: true, length: { maximum: 100 },  uniqueness: { case_sensitive: false }
  validates :quota, presence: true, numericality: { only_integer: true, greater_than: 0 }
  validates :credits, presence: true, numericality: { only_integer: true, greater_than: 0 }
  validates :status, presence: true
end
