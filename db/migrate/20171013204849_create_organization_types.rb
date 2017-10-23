class CreateOrganizationTypes < ActiveRecord::Migration[5.1]
  def change
    create_table :organization_types do |t|
      t.string :category

      t.timestamps
    end
  end
end
