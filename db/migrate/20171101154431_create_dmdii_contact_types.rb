class CreateDmdiiContactTypes < ActiveRecord::Migration[5.1]
  def change
    create_table :dmdii_contact_types do |t|
      t.text :contact_type
    end
  end
end
