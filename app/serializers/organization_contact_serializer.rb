class OrganizationContactSerializer < ApplicationSerializer
  attributes :id, :name, :phone_number, :title, :email
  attribute :contact_type

  def contact_type
    "#{object.organization_contact_type.contact_type}"
  end
end
