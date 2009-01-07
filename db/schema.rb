# This file is auto-generated from the current state of the database. Instead of editing this file, 
# please use the migrations feature of Active Record to incrementally modify your database, and
# then regenerate this schema definition.
#
# Note that this schema.rb definition is the authoritative source for your database schema. If you need
# to create the application database on another system, you should be using db:schema:load, not running
# all the migrations from scratch. The latter is a flawed and unsustainable approach (the more migrations
# you'll amass, the slower it'll run and the greater likelihood for issues).
#
# It's strongly recommended to check this file into your version control system.

ActiveRecord::Schema.define(:version => 20) do

  create_table "books", :force => true do |t|
    t.string   "title"
    t.text     "url"
    t.text     "image"
    t.string   "author"
    t.date     "started_on"
    t.datetime "created_at"
    t.date     "finished_on"
    t.text     "blurb"
    t.string   "state",       :default => "next"
    t.integer  "rate"
    t.integer  "days_taken"
    t.text     "review"
  end

  create_table "covers", :force => true do |t|
    t.string   "content_type"
    t.integer  "size"
    t.string   "filename"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "book_id"
    t.string   "thumbnail"
    t.integer  "parent_id"
  end

  create_table "feed_items", :force => true do |t|
    t.string   "title"
    t.text     "body"
    t.text     "link"
    t.string   "author"
    t.datetime "created_at"
  end

  create_table "related_books", :id => false, :force => true do |t|
    t.integer "book_id"
    t.integer "related_id"
  end

  create_table "users", :force => true do |t|
    t.string   "login"
    t.string   "email"
    t.string   "crypted_password",          :limit => 40
    t.string   "salt",                      :limit => 40
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "remember_token"
    t.datetime "remember_token_expires_at"
  end

end
