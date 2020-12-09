# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# This file is the source Rails uses to define your schema when running `rails
# db:schema:load`. When creating a new database, `rails db:schema:load` tends to
# be faster and is potentially less error prone than running all of your
# migrations from scratch. Old migrations may fail to apply correctly if those
# migrations use external dependencies or application code.
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema.define(version: 2020_12_08_231249) do

  create_table "evaluations", force: :cascade do |t|
    t.integer "score"
    t.text "comment"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.integer "project_id", null: false
    t.integer "student_group_id", null: false
    t.integer "student_id", null: false
    t.integer "comment_student"
    t.index ["project_id"], name: "index_evaluations_on_project_id"
    t.index ["student_group_id"], name: "index_evaluations_on_student_group_id"
    t.index ["student_id"], name: "index_evaluations_on_student_id"
  end

  create_table "projects", force: :cascade do |t|
    t.string "projectName"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "student_groups", force: :cascade do |t|
    t.string "group_name"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "students", force: :cascade do |t|
    t.string "firstN"
    t.string "lastN"
    t.string "dotNum"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.integer "student_group_id", null: false
    t.integer "user_id", null: false
    t.index ["student_group_id"], name: "index_students_on_student_group_id"
    t.index ["user_id"], name: "index_students_on_user_id"
  end

  create_table "users", force: :cascade do |t|
    t.string "name"
    t.string "email"
    t.string "password_digest"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  add_foreign_key "evaluations", "projects"
  add_foreign_key "evaluations", "student_groups"
  add_foreign_key "evaluations", "students"
  add_foreign_key "students", "student_groups"
  add_foreign_key "students", "users"
end
