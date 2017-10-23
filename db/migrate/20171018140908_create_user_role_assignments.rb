class CreateUserRoleAssignments < ActiveRecord::Migration[5.1]
  def change
    create_table :user_role_assignments do |t|
      t.integer :organization_id
      t.integer :user_id
      t.integer :role_id

      t.timestamps
    end
  end
end
