class RantSerializer < ActiveModel::Serializer

  attributes :title, :body, :id, :created_at

  # has_one :user, except: [:rants]

end
