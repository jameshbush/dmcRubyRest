class AddEmailToUsers < ActiveRecord::Migration[5.1]
  def change
    add_column :users, :email, :text
  end
end
