class OrgBasicSerializer < ApplicationSerializer
  attributes :id, :name, :description, :dmdii_tier
  attribute :organization_type
  attribute :membership_start_date, key: 'start_date'
  attribute :membership_end_date, key: 'end_date'

  def organization_type
    if object.organization_type
    "#{object.organization_type.category}"
    end
  end
end
