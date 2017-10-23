class OrganizationTypeSerializer < ApplicationSerializer
  attributes :category

  has_many :organizations
end
