class UserSerializer < ActiveModel::Serializer
  attributes :username, :initials
  # has_many :user_locations

end
