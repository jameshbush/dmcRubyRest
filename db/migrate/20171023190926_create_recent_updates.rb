class CreateRecentUpdates < ActiveRecord::Migration[5.1]
  def change
    create_table :recent_updates do |t|
      t.text :update_type
      t.integer :update_id
      t.integer :parent_id
      t.text :description
      t.integer :user_id
      t.text :internal_description
      t.text :attribute_name

      t.timestamps
    end
  end
end
