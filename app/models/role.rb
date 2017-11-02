class Role < ApplicationRecord
  #Model associations
  has_many :user_role_assignments
end
