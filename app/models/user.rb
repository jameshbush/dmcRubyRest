class User < ApplicationRecord
  has_many :dmdii_project_updates
  has_many :dmdii_documents
  has_many :user_role_assignments
end
