class UserSerializer < ActiveModel::Serializer

  attributes :first_name, :last_name, :email, :pwd, :id

  has_many :rants, except: [:users]

end
