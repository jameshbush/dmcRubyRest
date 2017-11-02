class CreateDmdiiDocuments < ActiveRecord::Migration[5.1]
  def change
    create_table :dmdii_documents do |t|
      t.string :name
      t.text :url
      t.references :dmdii_project, foreign_key: true
      t.references :user, foreign_key: true, column: :owner_id
      t.timestamp :modified
      t.timestamp :expires
      t.boolean :is_deleted
      t.references :file_type, foreign_key: true
      t.boolean :verified
      t.text :access_level
      t.integer :version
      t.text :sha256
      t.string :encryption_type
      t.date :scan_date

      t.timestamps
    end
  end
end
