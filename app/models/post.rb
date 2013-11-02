class Post < ActiveRecord::Base
  has_many :comments
  has_and_belongs_to_many :tags, join_table: :posts_tags
  belongs_to :section
end
