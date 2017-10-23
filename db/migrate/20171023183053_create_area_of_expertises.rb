class CreateAreaOfExpertises < ActiveRecord::Migration[5.1]
  def change
    create_table :area_of_expertises do |t|
      t.string :name
      t.text :description
      t.string :link
      t.boolean :is_dmdii

      t.timestamps
    end
  end
end
