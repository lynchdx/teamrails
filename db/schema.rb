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

ActiveRecord::Schema.define(version: 0) do

  create_table "assitance", primary_key: "assistance_id", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.integer  "assitance_present", null: false
    t.integer  "student_id",        null: false
    t.datetime "created_at"
    t.datetime "updated_at"
    t.index ["student_id"], name: "fk_student_id", using: :btree
  end

  create_table "day", primary_key: "day_id", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.date     "day_date",   null: false
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "section", primary_key: "section_id", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.string   "section_name", null: false
    t.integer  "teacher_id",   null: false
    t.integer  "day_id",       null: false
    t.integer  "subject_id",   null: false
    t.integer  "assitance_id", null: false
    t.datetime "created_at"
    t.datetime "updated_at"
    t.index ["assitance_id"], name: "fk_assistance_id", using: :btree
    t.index ["day_id"], name: "fk_day_id", using: :btree
    t.index ["subject_id"], name: "fk_dubjetc_id", using: :btree
    t.index ["teacher_id"], name: "fk_teacher_id", using: :btree
  end

  create_table "student", primary_key: "student_id", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.string   "student_name",     null: false
    t.string   "student_lastname", null: false
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "subject", primary_key: "subject_id", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.string   "subject_name", null: false
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "teacher", primary_key: "teacher_id", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.string   "teacher_name",     null: false
    t.string   "teacher_lastname", null: false
    t.string   "teacher_mail",     null: false
    t.string   "teacher_password", null: false
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_foreign_key "assitance", "student", primary_key: "student_id", name: "fk_student_id"
  add_foreign_key "section", "assitance", primary_key: "assistance_id", name: "fk_assistance_id"
  add_foreign_key "section", "day", primary_key: "day_id", name: "fk_day_id"
  add_foreign_key "section", "subject", primary_key: "subject_id", name: "fk_dubjetc_id"
  add_foreign_key "section", "teacher", primary_key: "teacher_id", name: "fk_teacher_id"
end
