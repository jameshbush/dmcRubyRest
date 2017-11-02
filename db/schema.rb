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

ActiveRecord::Schema.define(version: 20171102212036) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "addresses", force: :cascade do |t|
    t.string "street1"
    t.string "street2"
    t.string "city"
    t.string "state"
    t.string "country"
    t.string "zip"
    t.bigint "organization_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["organization_id"], name: "index_addresses_on_organization_id"
  end

  create_table "area_of_expertises", force: :cascade do |t|
    t.string "name"
    t.text "description"
    t.string "link"
    t.boolean "is_dmdii"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "contributing_organizations", force: :cascade do |t|
    t.bigint "dmdii_project_id"
    t.bigint "organization_id"
    t.index ["dmdii_project_id"], name: "index_contributing_organizations_on_dmdii_project_id"
    t.index ["organization_id"], name: "index_contributing_organizations_on_organization_id"
  end

  create_table "dmdii_contact_types", force: :cascade do |t|
    t.text "contact_type"
  end

  create_table "dmdii_member_contacts", force: :cascade do |t|
    t.bigint "organization_id"
    t.bigint "dmdii_contact_type_id"
    t.text "first_name"
    t.text "last_name"
    t.text "email"
    t.index ["dmdii_contact_type_id"], name: "index_dmdii_member_contacts_on_dmdii_contact_type_id"
    t.index ["organization_id"], name: "index_dmdii_member_contacts_on_organization_id"
  end

  create_table "dmdii_project_contacts", force: :cascade do |t|
    t.text "first_name"
    t.text "last_name"
    t.text "email"
  end

  create_table "dmdii_project_focus_areas", force: :cascade do |t|
    t.text "name"
  end

  create_table "dmdii_project_statuses", force: :cascade do |t|
    t.text "name"
  end

  create_table "dmdii_project_thrusts", force: :cascade do |t|
    t.text "name"
    t.text "code"
  end

  create_table "dmdii_project_updates", force: :cascade do |t|
    t.date "date"
    t.string "title"
    t.text "description"
    t.bigint "user_id"
    t.bigint "dmdii_project_id"
    t.text "access_level"
    t.boolean "is_deleted"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["dmdii_project_id"], name: "index_dmdii_project_updates_on_dmdii_project_id"
    t.index ["user_id"], name: "index_dmdii_project_updates_on_user_id"
  end

  create_table "dmdii_projects", force: :cascade do |t|
    t.integer "status_id"
    t.datetime "awarded_date"
    t.datetime "end_date"
    t.string "project_title"
    t.text "project_summary"
    t.integer "principal_point_of_contact_id"
    t.integer "organization_dmdii_member_id"
    t.integer "principal_investigator_id"
    t.integer "focus_area_id"
    t.integer "thrust_id"
    t.integer "project_root_number"
    t.integer "project_call_number"
    t.integer "project_number"
    t.decimal "cost_share", precision: 12, scale: 2
    t.decimal "dmdii_funding", precision: 12, scale: 2
    t.boolean "is_deleted", default: false, null: false
    t.boolean "is_event", default: false, null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "dmdii_quick_links", force: :cascade do |t|
    t.text "text"
    t.string "link"
    t.integer "dmdii_document_id"
    t.date "created"
    t.string "display_name"
  end

  create_table "organization_contact_types", force: :cascade do |t|
    t.text "contact_type"
  end

  create_table "organization_contacts", force: :cascade do |t|
    t.bigint "organization_id"
    t.bigint "contact_type_id"
    t.text "name"
    t.text "phone_number"
    t.text "title"
    t.text "email"
    t.index ["contact_type_id"], name: "index_organization_contacts_on_contact_type_id"
    t.index ["organization_id"], name: "index_organization_contacts_on_organization_id"
  end

  create_table "organization_types", force: :cascade do |t|
    t.string "category"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "organizations", force: :cascade do |t|
    t.string "name"
    t.string "description"
    t.integer "dmdii_tier"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer "organization_type_id"
    t.date "membership_start_date"
    t.date "membership_end_date"
  end

  create_table "recent_updates", force: :cascade do |t|
    t.text "update_type"
    t.integer "update_id"
    t.integer "parent_id"
    t.text "description"
    t.integer "user_id"
    t.bigint "update_date"
    t.text "internal_description"
    t.text "attribute_name"
  end

  create_table "roles", force: :cascade do |t|
    t.string "role"
  end

  create_table "user_role_assignments", force: :cascade do |t|
    t.integer "organization_id"
    t.integer "user_id"
    t.integer "role_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "users", force: :cascade do |t|
    t.string "user_name"
    t.string "realname"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.boolean "termsConditions"
    t.boolean "isDMDIIMember"
    t.string "firstname"
    t.string "lastname"
    t.text "email"
  end

  add_foreign_key "addresses", "organizations"
  add_foreign_key "contributing_organizations", "dmdii_projects"
  add_foreign_key "contributing_organizations", "organizations"
  add_foreign_key "dmdii_project_updates", "dmdii_projects"
  add_foreign_key "dmdii_project_updates", "users"
  add_foreign_key "dmdii_projects", "dmdii_project_focus_areas", column: "focus_area_id"
  add_foreign_key "dmdii_projects", "dmdii_project_statuses", column: "status_id"
  add_foreign_key "dmdii_projects", "dmdii_project_thrusts", column: "thrust_id"
  add_foreign_key "dmdii_projects", "organizations", column: "organization_dmdii_member_id"
  add_foreign_key "dmdii_projects", "users", column: "principal_investigator_id"
  add_foreign_key "dmdii_projects", "users", column: "principal_point_of_contact_id"
  add_foreign_key "organization_contacts", "organization_contact_types", column: "contact_type_id"
  add_foreign_key "organization_contacts", "organizations"
  add_foreign_key "organizations", "organization_types"
  add_foreign_key "user_role_assignments", "organizations"
  add_foreign_key "user_role_assignments", "roles"
  add_foreign_key "user_role_assignments", "users"
end
