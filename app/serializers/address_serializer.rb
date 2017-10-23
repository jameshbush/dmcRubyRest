class AddressSerializer < ApplicationSerializer
  attributes :street1, :street2, :city, :state, :country, :zip

  belongs_to :organization
end
