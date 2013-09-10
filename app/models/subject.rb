class Subject < ActiveRecord::Base
  
  validates :name, presence: true, length: { maximum: 200 }
  validates :code, presence: true, length: { maximum: 100 }
  validates :quota, presence: true, numericality: { only_integer: true, greater_than: 0 }
  validates :credits, presence: true, numericality: { only_integer: true, greater_than: 0 }
  validates :status, presence: true
end
