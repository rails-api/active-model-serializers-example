# encoding: UTF-8
# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# Note that this schema.rb definition is the authoritative source for your
# database schema. If you need to create the application database on another
# system, you should be using db:schema:load, not running all the migrations
# from scratch. The latter is a flawed and unsustainable approach (the more migrations
# you'll amass, the slower it'll run and the greater likelihood for issues).
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema.define(version: 20131030161301) do

  create_table "comments", force: true do |t|
    t.text     "body"
    t.integer  "post_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "comments", ["post_id"], name: "index_comments_on_post_id"

  create_table "comments_tags", force: true do |t|
    t.integer "comment_id"
    t.integer "tag_id"
  end

  add_index "comments_tags", ["comment_id"], name: "index_comments_tags_on_comment_id"
  add_index "comments_tags", ["tag_id"], name: "index_comments_tags_on_tag_id"

  create_table "posts", force: true do |t|
    t.string   "title"
    t.text     "body"
    t.integer  "section_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "posts", ["section_id"], name: "index_posts_on_section_id"

  create_table "posts_tags", force: true do |t|
    t.integer "post_id"
    t.integer "tag_id"
  end

  add_index "posts_tags", ["post_id"], name: "index_posts_tags_on_post_id"
  add_index "posts_tags", ["tag_id"], name: "index_posts_tags_on_tag_id"

  create_table "sections", force: true do |t|
    t.string "name"
  end

  create_table "tags", force: true do |t|
    t.string "name"
  end

end
