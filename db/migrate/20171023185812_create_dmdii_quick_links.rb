class CreateDmdiiQuickLinks < ActiveRecord::Migration[5.1]
  def change
    create_table :dmdii_quick_links do |t|
      t.text :text
      t.string :link
      t.integer :dmdii_document_id
      t.date :created
      t.string :display_name
    end
  end
end
