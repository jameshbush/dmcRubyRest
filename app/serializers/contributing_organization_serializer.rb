class ContributingOrganizationSerializer < ApplicationSerializer
  attributes :id
  has_one :dmdii_project
  has_one :organization
end
