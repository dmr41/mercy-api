class RantSerializer < ActiveModel::Serializer

  attributes :title, :body, :id, :user_id

end
