class OrganizationContact < ApplicationRecord
  belongs_to :organization
  belongs_to :organization_contact_type, foreign_key: 'contact_type_id'
end
