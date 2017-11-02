class UserRoleAssignment < ApplicationRecord
  #Model associations
  belongs_to :role
  belongs_to :user
  belongs_to :organization, optional: true
end
