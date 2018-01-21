class User < ApplicationRecord

  #before_save { email.downcase! }
  before_save { username.downcase! }

  #VALID_EMAIL_REGEX = /\A[\w+\-.]+@[a-z\d\-]+(\.[a-z\d\-]+)*\.[a-z]+\z/i

  validates :username,  presence: true, 
                        length: { maximum: 100 },
                        uniqueness: { case_sensitive: false }
  validates :name,  presence: true, 
                    length: { maximum: 100 }
  #validates :email, presence: true, 
  #                  length: { maximum: 255 }, 
  #                  format: { with: VALID_EMAIL_REGEX }, 
  #                  uniqueness: { case_sensitive: false }
  has_secure_password
  validates :password, presence: true,
                       length: { minimum: 6 }
end