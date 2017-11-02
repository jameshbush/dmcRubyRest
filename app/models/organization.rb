class Organization < ApplicationRecord
  #model association
  has_one :address, dependent: :destroy
  accepts_nested_attributes_for :address
  has_many :contributing_organizations
  has_many :dmdii_projects, through: :contributing_organizations
  has_many :dmdii_member_contacts
  has_many :organization_contacts

  belongs_to :organization_type, optional: true

  #validations
  validates_presence_of :name, :description, :address

  scope :by_name, -> { order(name: :asc, id: :asc) }
end
