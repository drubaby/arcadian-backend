class User < ApplicationRecord
  has_secure_password
  validates :username, uniqueness: { case_sensitive: false }
  validates :initials, length: { is: 3 }
  has_many :machines
  has_many :locations
  has_many :machine_issues

end
