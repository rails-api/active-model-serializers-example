class PostSerializer < ActiveModel::Serializer
  attributes :title, :body

  has_many :comments, :tags
  has_one  :section
end
