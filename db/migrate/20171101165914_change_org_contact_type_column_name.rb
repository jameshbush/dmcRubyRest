class ChangeOrgContactTypeColumnName < ActiveRecord::Migration[5.1]
  def change
    rename_column :organization_contacts, :organization_contact_type_id, :contact_type_id
  end
end
