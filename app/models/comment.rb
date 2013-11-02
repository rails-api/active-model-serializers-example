class Comment < ActiveRecord::Base
  belongs_to :post, class_name: 'Post'
  has_and_belongs_to_many :tags, join_table: :comments_tags
end
