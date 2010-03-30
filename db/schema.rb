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

ActiveRecord::Schema.define(:version => 20100330191954) do

  create_table "documents", :force => true do |t|
    t.string   "name"
    t.text     "body"
    t.string   "original_url"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "summaries", :force => true do |t|
    t.integer  "document_id"
    t.text     "body"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "up_votes"
    t.integer  "down_votes"
    t.string   "type_of_subset", :default => "full document"
    t.integer  "page_begin"
    t.integer  "page_end"
  end

  create_table "summary_votes", :force => true do |t|
    t.integer  "summary_id"
    t.integer  "score"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

end
