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

ActiveRecord::Schema.define(version: 20161203003107) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "options", force: :cascade do |t|
    t.integer  "question_id"
    t.string   "text"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
    t.index ["question_id"], name: "index_options_on_question_id", using: :btree
  end

  create_table "question_types", force: :cascade do |t|
    t.string   "question_type"
    t.datetime "created_at",    null: false
    t.datetime "updated_at",    null: false
  end

  create_table "questions", force: :cascade do |t|
    t.integer  "survey_id"
    t.string   "prompt"
    t.integer  "question_type_id"
    t.boolean  "required_answer"
    t.datetime "created_at",       null: false
    t.datetime "updated_at",       null: false
    t.index ["question_type_id"], name: "index_questions_on_question_type_id", using: :btree
    t.index ["survey_id"], name: "index_questions_on_survey_id", using: :btree
  end

  create_table "responses", force: :cascade do |t|
    t.integer  "option_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["option_id"], name: "index_responses_on_option_id", using: :btree
  end

  create_table "surveys", force: :cascade do |t|
    t.string   "title"
    t.integer  "quota"
    t.text     "description"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
  end

  add_foreign_key "options", "questions"
  add_foreign_key "questions", "question_types"
  add_foreign_key "questions", "surveys"
  add_foreign_key "responses", "options"
end
