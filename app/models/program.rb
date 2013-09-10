class Program < ActiveRecord::Base
  
  validates :name, presence: true, length: { maximum: 200 }
  validates :code, presence: true, length: { maximum: 100 }
  validates :objective, presence: true, length: { maximum: 500 }
  validates :status, presence: true
end
