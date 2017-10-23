class CreateDmdiiProjects < ActiveRecord::Migration[5.1]
  def change
    create_table :dmdii_projects do |t|
      t.integer :status_id
      t.timestamp :awarded_date
      t.timestamp :end_date
      t.string :project_title
      t.text :project_summary
      t.integer :principal_point_of_contact_id
      t.integer :organization_dmdii_member_id
      t.integer :principal_investigator_id
      t.integer :focus_area_id
      t.integer :thrust_id
      t.integer :project_root_number
      t.integer :project_call_number
      t.integer :project_number
      t.decimal :cost_share, precision: 12, scale: 2
      t.decimal :dmdii_funding, precision: 12, scale: 2
      t.boolean :is_deleted, :default => false
      t.boolean :is_event, :default => false

      t.timestamps
    end
    add_foreign_key :dmdii_projects, :users, column: :principal_point_of_contact_id
    add_foreign_key :dmdii_projects, :organizations, column: :organization_dmdii_member_id
    add_foreign_key :dmdii_projects, :users, column: :principal_investigator_id
  end
end
