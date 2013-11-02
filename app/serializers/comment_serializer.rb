class CommentSerializer < ActiveModel::Serializer
  attributes :body

  has_many :tags
end
