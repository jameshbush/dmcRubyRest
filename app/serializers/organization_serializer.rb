class OrganizationSerializer < ApplicationSerializer
  attributes :id, :name, :description, :dmdii_tier
  attribute :organization_type
  attribute :membership_start_date, key: 'start_date'
  attribute :membership_end_date, key: 'end_date'

  has_one :address
  has_many :organization_contacts
  has_many :dmdii_member_contacts

  def organization_type
    if object.organization_type
    "#{object.organization_type.category}"
    end
  end
end
