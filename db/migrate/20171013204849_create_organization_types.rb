class CreateOrganizationTypes < ActiveRecord::Migration[5.1]
  def change
    create_table :organization_types do |t|
      t.string :category
    end
  end
end
