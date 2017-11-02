class DmdiiMemberContact < ApplicationRecord
  belongs_to :organization
  belongs_to :dmdii_contact_type
end
