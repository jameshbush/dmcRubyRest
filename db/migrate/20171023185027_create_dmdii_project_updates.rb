class CreateDmdiiProjectUpdates < ActiveRecord::Migration[5.1]
  def change
    create_table :dmdii_project_updates do |t|
      t.date :date
      t.string :title
      t.text :description
      t.references :user, foreign_key: true
      t.references :dmdii_project, foreign_key: true
      t.text :access_level
      t.boolean :is_deleted

      t.timestamps
    end
  end
end
