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

ActiveRecord::Schema.define(version: 20160223142858) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "accomplishments", force: :cascade do |t|
    t.integer  "user_id"
    t.integer  "item_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_index "accomplishments", ["item_id"], name: "index_accomplishments_on_item_id", using: :btree
  add_index "accomplishments", ["user_id"], name: "index_accomplishments_on_user_id", using: :btree

  create_table "chapters", force: :cascade do |t|
    t.string   "title"
    t.integer  "course_id"
    t.integer  "position"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_index "chapters", ["course_id"], name: "index_chapters_on_course_id", using: :btree

  create_table "courses", force: :cascade do |t|
    t.string   "title"
    t.string   "language"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "exams", force: :cascade do |t|
    t.text     "content"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "exercises", force: :cascade do |t|
    t.text     "content"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "favs", force: :cascade do |t|
    t.integer  "user_id"
    t.integer  "hiragana_id"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
  end

  add_index "favs", ["hiragana_id"], name: "index_favs_on_hiragana_id", using: :btree
  add_index "favs", ["user_id"], name: "index_favs_on_user_id", using: :btree

  create_table "generators", force: :cascade do |t|
    t.string   "ideog1"
    t.string   "ideog2"
    t.string   "ideog3"
    t.string   "ideog4"
    t.string   "romanji"
    t.string   "transcription1"
    t.string   "transcription2"
    t.datetime "created_at",     null: false
    t.datetime "updated_at",     null: false
    t.integer  "user_id"
    t.integer  "post_id"
  end

  add_index "generators", ["post_id"], name: "index_generators_on_post_id", using: :btree
  add_index "generators", ["user_id"], name: "index_generators_on_user_id", using: :btree

  create_table "hiraganas", force: :cascade do |t|
    t.string   "ideo1"
    t.string   "ideo2"
    t.string   "bigletter"
    t.string   "midletter"
    t.string   "transcription"
    t.string   "upload"
    t.string   "audioclick"
    t.integer  "user_id"
    t.datetime "created_at",    null: false
    t.datetime "updated_at",    null: false
    t.string   "sound"
  end

  add_index "hiraganas", ["user_id"], name: "index_hiraganas_on_user_id", using: :btree

  create_table "items", force: :cascade do |t|
    t.string   "title"
    t.integer  "chapter_id"
    t.integer  "position"
    t.integer  "actable_id"
    t.string   "actable_type"
    t.datetime "created_at",   null: false
    t.datetime "updated_at",   null: false
  end

  add_index "items", ["chapter_id"], name: "index_items_on_chapter_id", using: :btree

  create_table "lessons", force: :cascade do |t|
    t.text     "content"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "posts", force: :cascade do |t|
    t.string   "cover"
    t.string   "title"
    t.text     "introduction"
    t.text     "content"
    t.string   "category"
    t.string   "tag"
    t.integer  "user_id"
    t.datetime "created_at",   null: false
    t.datetime "updated_at",   null: false
    t.string   "subtitle"
  end

  add_index "posts", ["user_id"], name: "index_posts_on_user_id", using: :btree

  create_table "users", force: :cascade do |t|
    t.string   "email",                  default: "",    null: false
    t.string   "encrypted_password",     default: "",    null: false
    t.string   "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",          default: 0,     null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.inet     "current_sign_in_ip"
    t.inet     "last_sign_in_ip"
    t.datetime "created_at",                             null: false
    t.datetime "updated_at",                             null: false
    t.date     "birth_date"
    t.string   "gender"
    t.string   "country"
    t.string   "address"
    t.string   "phone_number"
    t.string   "interests"
    t.string   "language_course"
    t.string   "provider"
    t.string   "uid"
    t.string   "picture"
    t.string   "first_name"
    t.string   "last_name"
    t.string   "token"
    t.datetime "token_expiry"
    t.boolean  "admin",                  default: false, null: false
  end

  add_index "users", ["email"], name: "index_users_on_email", unique: true, using: :btree
  add_index "users", ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true, using: :btree

  add_foreign_key "accomplishments", "items"
  add_foreign_key "accomplishments", "users"
  add_foreign_key "chapters", "courses"
  add_foreign_key "favs", "hiraganas"
  add_foreign_key "favs", "users"
  add_foreign_key "generators", "posts"
  add_foreign_key "generators", "users"
  add_foreign_key "hiraganas", "users"
  add_foreign_key "items", "chapters"
  add_foreign_key "posts", "users"
end
