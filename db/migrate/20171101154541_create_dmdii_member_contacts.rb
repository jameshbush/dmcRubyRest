class CreateDmdiiMemberContacts < ActiveRecord::Migration[5.1]
  def change
    create_table :dmdii_member_contacts do |t|
      t.references :organization
      t.references :dmdii_contact_type
      t.text :first_name
      t.text :last_name
      t.text :email
    end
  end
end
