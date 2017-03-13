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

ActiveRecord::Schema.define(version: 20170307180048) do

  create_table "students", force: :cascade do |t|
    t.integer  "pin_no",                    limit: 8
    t.string   "section"
    t.string   "name"
    t.float    "cgpa"
    t.float    "I_Sem"
    t.float    "II_Sem"
    t.float    "III_Sem"
    t.float    "IV_Sem"
    t.float    "V_Sem"
    t.float    "VI_Sem"
    t.float    "VII_Sem"
    t.float    "VIII_Sem"
    t.float    "I_Sem_Attd"
    t.float    "II_Sem_Attd"
    t.float    "III_Sem_Attd"
    t.float    "IV_Sem_Attd"
    t.float    "V_Sem_Attd"
    t.float    "VI_Sem_Attd"
    t.float    "VII_Sem_Attd"
    t.float    "VIII_Sem_Attd"
    t.string   "Sub1_Name"
    t.float    "Sub1_Mid1"
    t.float    "Sub1_Mid2"
    t.float    "Sub1_Mid3"
    t.float    "Sub1_Avg"
    t.float    "Sub1_Assign"
    t.float    "Sub1_Total"
    t.string   "Sub2_Name"
    t.float    "Sub2_Mid1"
    t.float    "Sub2_Mid2"
    t.float    "Sub2_Mid3"
    t.float    "Sub2_Avg"
    t.float    "Sub2_Assign"
    t.float    "Sub2_Total"
    t.string   "Sub3_Name"
    t.float    "Sub3_Mid1"
    t.float    "Sub3_Mid2"
    t.float    "Sub3_Mid3"
    t.float    "Sub3_Avg"
    t.float    "Sub3_Assign"
    t.float    "Sub3_Total"
    t.string   "Sub4_Name"
    t.float    "Sub4_Mid1"
    t.float    "Sub4_Mid2"
    t.float    "Sub4_Mid3"
    t.float    "Sub4_Avg"
    t.float    "Sub4_Assign"
    t.float    "Sub4_Total"
    t.string   "Sub5_Name"
    t.float    "Sub5_Mid1"
    t.float    "Sub5_Mid2"
    t.float    "Sub5_Mid3"
    t.float    "Sub5_Avg"
    t.float    "Sub5_Assign"
    t.float    "Sub5_Total"
    t.string   "Sub6_Name"
    t.float    "Sub6_Mid1"
    t.float    "Sub6_Mid2"
    t.float    "Sub6_Mid3"
    t.float    "Sub6_Avg"
    t.float    "Sub6_Assign"
    t.float    "Sub6_Total"
    t.string   "Sub7_Name"
    t.float    "Sub7_Mid1"
    t.float    "Sub7_Mid2"
    t.float    "Sub7_Mid3"
    t.float    "Sub7_Avg"
    t.float    "Sub7_Assign"
    t.float    "Sub7_Total"
    t.integer  "Parent_Cont_No",            limit: 8
    t.string   "Parent_Mail_id"
    t.string   "AMC_Name"
    t.integer  "AMC_Cont_No"
    t.string   "student_mail_id"
    t.integer  "student_cont_no",           limit: 8
    t.string   "Placement_status"
    t.string   "Placed_in"
    t.float    "sal_package_in_lakhs"
    t.float    "SSC"
    t.float    "Inter"
    t.string   "Intermidiate_College_Name"
    t.string   "location"
    t.string   "city"
    t.datetime "created_at",                          null: false
    t.datetime "updated_at",                          null: false
  end

end
