class Program < ActiveRecord::Base
  
  validates :name, presence: true, length: { maximum: 200 }
  validates :code, presence: true, length: { maximum: 100 }
  validates :objective, presence: true, length: { maximum: 500 }
  validates :status, presence: true

  has_many :program_semesters
  has_many :semester, :throught => :program_semesters

end
