class CreateDmdiiProjectStatuses < ActiveRecord::Migration[5.1]
  def change
    create_table :dmdii_project_statuses do |t|
      t.text :name
    end
  end
end
