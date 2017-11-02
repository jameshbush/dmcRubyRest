class CreateOrganizationContacts < ActiveRecord::Migration[5.1]
  def change
    create_table :organization_contacts do |t|
      t.references :organization, foreign_key: true
      t.references :organization_contact_type, foreign_key: true
      t.text :name
      t.text :phone_number
      t.text :title
      t.text :email
    end
  end
end
