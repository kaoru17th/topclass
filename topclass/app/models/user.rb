class User < ActiveRecord::Base

  before_save { self.email = email.downcase }

  validates :firstname,  presence: true, length: { maximum: 100 }
  validates :lastname, presence: true, length: { maximum: 100 }
  validates :identificationtype, presence: true
  validates :identification, presence: true, length: { maximum: 20 }
  validates :status, presence: true
  validates :usertype, presence: true
  validates :password_digest, presence: true
  VALID_EMAIL_REGEX = /\A[\w+\-.]+@[a-z\d\-.]+\.[a-z]+\z/i
  validates :email, presence: true, format: { with: VALID_EMAIL_REGEX },uniqueness: { case_sensitive: false }
  
  
  has_secure_password
end
