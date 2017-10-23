class AddTypeIdForeignKey < ActiveRecord::Migration[5.1]
  def change
    add_column :organizations, :organization_type_id, :integer
    add_foreign_key :organizations, :organization_types
    remove_column :organizations, :type_id
  end
end
