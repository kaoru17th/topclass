class Program < ActiveRecord::Base
  before_save { self.code = code.upcase }
  
  validates :name, presence: true, length: { maximum: 200 }
  validates :code, presence: true, length: { maximum: 100 },  uniqueness: { case_sensitive: false }
  validates :objective, presence: true, length: { maximum: 500 }
  validates :status, presence: true

  has_many :program_semesters
  has_many :semester, :throught => :program_semesters

end
