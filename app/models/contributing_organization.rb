class ContributingOrganization < ApplicationRecord
  #Model associations
  belongs_to :dmdii_project
  belongs_to :organization
end
