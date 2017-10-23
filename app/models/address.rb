class Address < ApplicationRecord
  #model association
  belongs_to :organization

  #validation
  validates_presence_of :street1, :city, :state, :country, :zip
end
