class User < ApplicationRecord
  has_many :user_role_assignments
end
