class UserSerializer < ActiveModel::Serializer

  attributes :first_name, :last_name, :email, :id, :authentication_token

  has_many :rants, except: [:users]

end
