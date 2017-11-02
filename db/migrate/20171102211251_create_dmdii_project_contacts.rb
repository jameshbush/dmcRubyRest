class CreateDmdiiProjectContacts < ActiveRecord::Migration[5.1]
  def change
    create_table :dmdii_project_contacts do |t|
      t.text :first_name
      t.text :last_name
      t.text :email
    end
  end
end
