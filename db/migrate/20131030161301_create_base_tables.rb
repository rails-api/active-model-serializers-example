class CreateBaseTables < ActiveRecord::Migration
  def change
    create_table :posts, force: true do |t|
      t.string     :title
      t.text       :body
      t.belongs_to :section, index: true
      t.timestamps
    end

    create_table :comments, force: true do |t|
      t.text       :body
      t.belongs_to :post, index: true
      t.timestamps
    end

    create_table :tags, force: true do |t|
      t.string :name
    end

    create_table :sections, force: true do |t|
      t.string :name
    end

    create_table :posts_tags, force: true do |t|
      t.references :post, :tag, index: true
    end

    create_table :comments_tags, force: true do |t|
      t.references :comment, :tag, index: true
    end
  end
end
