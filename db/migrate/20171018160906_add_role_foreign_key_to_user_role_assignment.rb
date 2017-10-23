class AddRoleForeignKeyToUserRoleAssignment < ActiveRecord::Migration[5.1]
  def change
    add_foreign_key :user_role_assignments, :roles
  end
end
