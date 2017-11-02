class DmdiiMemberContactSerializer < ApplicationSerializer
  attributes :id, :first_name, :last_name, :email
  attribute :dmdii_contact_type

  def dmdii_contact_type
    "#{object.dmdii_contact_type.contact_type}"
  end
end
