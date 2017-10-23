class ContributingOrganization < ApplicationRecord
  belongs_to :dmdii_project
  belongs_to :organization
end
