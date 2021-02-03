class Administrator < ApplicationRecord
  has_secure_password

  validates :username, presence: true, uniqueness: true
  validates :firstname, presence: true
  validates :lastname, presence: true
  validates :email, uniqueness: true, format: { with: URI::MailTo::EMAIL_REGEXP}
  validates :password, length: { in: 6..12 }
end
