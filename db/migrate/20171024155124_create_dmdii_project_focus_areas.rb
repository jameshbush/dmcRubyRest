class CreateDmdiiProjectFocusAreas < ActiveRecord::Migration[5.1]
  def change
    create_table :dmdii_project_focus_areas do |t|
      t.text :name
    end
  end
end
