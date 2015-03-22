class RantSerializer < ActiveModel::Serializer

  attributes :title, :body, :id

  has_one :user, except: [:rants]

end
