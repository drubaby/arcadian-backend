class User < ApplicationRecord
  has_many :machines
  has_many :locations
  has_many :machine_issues

end
