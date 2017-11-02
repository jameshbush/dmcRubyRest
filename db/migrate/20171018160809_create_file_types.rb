class CreateFileTypes < ActiveRecord::Migration[5.1]
  def change
    create_table :file_types do |t|
      t.text :name
    end
  end
end
