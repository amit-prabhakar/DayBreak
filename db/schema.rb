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

ActiveRecord::Schema.define(version: 20170402193616) do

  create_table "examinations", force: :cascade do |t|
    t.string   "study"
    t.string   "name"
    t.string   "voltage"
    t.string   "current"
    t.string   "exposure"
    t.datetime "created_at",                   null: false
    t.datetime "updated_at",                   null: false
    t.string   "summary"
    t.string   "demographics_study_location"
    t.string   "demographics_accession"
    t.date     "demographics_study_date"
    t.integer  "demographics_gravida"
    t.integer  "demographics_para"
    t.date     "demographics_lmp"
    t.integer  "demographics_maternal_weight"
    t.string   "fetal_pos_presentation"
    t.string   "fetal_pos_gestation_loc"
    t.string   "fetal_pos_probes"
    t.string   "fetal_pos_scan_quality"
    t.string   "fetal_pos_study_tech"
    t.string   "fetal_heart_4chamber"
    t.string   "fetal_heart_locsz"
    t.string   "fetal_heart_rhythm"
    t.string   "fetal_heart_lout"
    t.string   "fetal_heart_rout"
    t.string   "fetal_heart_venous_sys"
    t.string   "fetal_anat_intercranial"
    t.float    "fetal_anat_nf"
    t.float    "fetal_anat_lvwidth"
    t.string   "fetal_anat_face"
    t.string   "fetal_anat_thorax"
    t.string   "fetal_anat_spine"
    t.string   "fetal_anat_upper_extrm"
    t.string   "fetal_anat_lower_extrm"
    t.string   "fetal_anat_abdominal_wall"
    t.string   "fetal_anat_abdominal_cavity"
    t.string   "fetal_anat_stomach"
    t.string   "fetal_anat_bladder"
    t.string   "fetal_anat_rkidney"
    t.string   "fetal_anat_lkidney"
    t.string   "fetal_anat_skeletal"
    t.string   "fetal_anat_gender"
    t.string   "maternal_anat_cervix"
    t.float    "maternal_anat_cervix_length"
    t.string   "maternal_anat_internalos"
    t.float    "maternal_anat_os_distance"
    t.float    "amniotic_afi"
    t.float    "amniotic_sdp"
    t.string   "amniotic_findings"
    t.float    "biometry_bpd"
    t.float    "biometry_hc"
    t.float    "biometry_ac"
    t.float    "biometry_fl"
    t.float    "biometry_hum"
    t.float    "biometry_cer"
    t.float    "biometry_cm"
    t.float    "biometry_ofd"
    t.string   "fetal_heart_hrate"
    t.string   "fetal_anat_general"
    t.string   "placenta_general"
    t.string   "placenta_longitude"
    t.string   "placenta_transverse"
    t.string   "placenta_appearance"
    t.string   "placenta_cord_vessels"
    t.string   "placenta_grade"
    t.string   "placenta_cord_ins"
    t.string   "placenta_chorionicity"
    t.string   "image64"
    t.string   "demographics_history"
  end

  create_table "models", force: :cascade do |t|
    t.string   "email",                  default: "", null: false
    t.string   "encrypted_password",     default: "", null: false
    t.string   "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",          default: 0,  null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.string   "current_sign_in_ip"
    t.string   "last_sign_in_ip"
    t.datetime "created_at",                          null: false
    t.datetime "updated_at",                          null: false
    t.index ["email"], name: "index_models_on_email", unique: true
    t.index ["reset_password_token"], name: "index_models_on_reset_password_token", unique: true
  end

  create_table "users", force: :cascade do |t|
    t.string   "email",                  default: "", null: false
    t.string   "encrypted_password",     default: "", null: false
    t.string   "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",          default: 0,  null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.string   "current_sign_in_ip"
    t.string   "last_sign_in_ip"
    t.datetime "created_at",                          null: false
    t.datetime "updated_at",                          null: false
    t.index ["email"], name: "index_users_on_email", unique: true
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true
  end

end
