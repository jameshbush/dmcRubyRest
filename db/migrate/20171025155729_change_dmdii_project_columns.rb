class ChangeDmdiiProjectColumns < ActiveRecord::Migration[5.1]
  def change
    change_column :dmdii_projects, :is_deleted, :boolean, default: false, null: false
    change_column :dmdii_projects, :is_event, :boolean, default: false, null: false
  end
end
