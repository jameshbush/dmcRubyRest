class CreateOrganizations < ActiveRecord::Migration[5.1]
  def change
    create_table :organizations do |t|
      t.string :name
      t.string :description
      t.integer :type_id
      t.integer :dmdii_tier

      t.timestamps
    end
  end
end
