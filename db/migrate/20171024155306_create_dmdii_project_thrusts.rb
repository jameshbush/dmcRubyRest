class CreateDmdiiProjectThrusts < ActiveRecord::Migration[5.1]
  def change
    create_table :dmdii_project_thrusts do |t|
      t.text :name
      t.text :code
    end
  end
end
