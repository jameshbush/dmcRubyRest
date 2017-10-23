class AddForeignKeysToUserRoleAssignment < ActiveRecord::Migration[5.1]
  def change
    add_foreign_key :user_role_assignments, :users
    add_foreign_key :user_role_assignments, :organizations
  end
end
