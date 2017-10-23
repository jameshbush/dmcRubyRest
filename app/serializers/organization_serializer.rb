class OrganizationSerializer < ApplicationSerializer
  attributes :id, :name, :description, :dmdii_tier, :organization_type

  def organization_type
    if object.organization_type
    "#{object.organization_type.category}"
    end
  end

  has_one :address
  belongs_to :organization_type
end
