# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
require 'faker'

Organization.create!(id: 1, name: 'Another One', description: "DJ Khalid's hangout",
  dmdii_tier: 1, organization_type_id: 2, membership_start_date: '2016-10-23',
  membership_end_date: '2020-10-23', address_attributes: {street1: '123 abc drive',
  street2: '', city: 'aurora', state: 'il', country: 'usa', zip: '61614'}) unless
  Organization.find_by(id: 1).present?

organization_types = OrganizationType.create!([{id: 1, category: 'Industry'},
  {id: 2, category: 'Academic'}, {id: 3, category: 'U.S. Government'},
  {id: 4, category: 'State and Local Government'}]) unless OrganizationType.find_by(id: 1).present?

dmdii_contact_types = DmdiiContactType.create!([{id: 1, contact_type: 'primary point of contact'},
  {id: 2, contact_type: 'secondary point of contact'}, {id: 3, contact_type: 'executive lead'}]) unless
  DmdiiContactType.find_by(id: 1).present?

DmdiiMemberContact.create!(organization_id: 1, dmdii_contact_type_id: 1,
  first_name: Faker::Name.first_name, last_name: Faker::Name.last_name,
  email: Faker::Internet.email) unless DmdiiMemberContact.find_by(id: 1).present?

organization_contact_types = OrganizationContactType.create!([{contact_type: 'ENGINEERING'},
  {contact_type: 'LEGAL'}, {contact_type: 'MARKETING'}, {contact_type: 'SOURCING'},
  {contact_type: 'SUPPORT'}, {contact_type: 'RESEARCH AND DEVELOPMENT'}]) unless
  OrganizationContactType.find_by(id: 1).present?

OrganizationContact.create!(organization_id: 1, contact_type_id: Faker::Number.between(1, 6),
  name: Faker::Name.name, phone_number: Faker::PhoneNumber.cell_phone, title: Faker::Job.title,
  email: Faker::Internet.email) unless OrganizationContact.find_by(id: 3).present?

dmdii_project_focus_areas = DmdiiProjectFocusArea.create!([{name: "Model-Based Design/Enterprise"},
  {name: "Manufacturing Processes"}, {name: "Sensors & Metrology"},
  {name: "Supply Chain Management"}, {name: "Product Lifecycle Management"},
  {name: "Other"}, {name: "Cyber Security"}]) unless DmdiiProjectFocusArea.find_by(id: 1).present?

dmdii_project_thrusts = DmdiiProjectThrust.create!([{name: "Advanced Manufacturing Enterprise", code: "AME"},
  {name: 'Intelligent Machining', code: 'IM'}, {name: 'Advanced Analysis', code: 'AA'},
  {name: 'Adaptive Vehicle Make', code: 'AVM'}, {name: 'Digital Manufacturing Commons', code: 'DMC'},
  {name: 'Cost Systems', code: 'CS'}]) unless DmdiiProjectThrust.find_by(id: 1).present?

dmdii_project_statuses = DmdiiProjectStatus.create!([{name: 'pre-awarded'},
  {name: 'awarded'}, {name: 'completed'}]) unless DmdiiProjectStatus.find_by(id: 1).present?

file_types = FileType.create!([{name: 'OVERVIEW'}, {name: 'STATUS'}, {name: 'FINANCIAL'},
  {name: 'SCHEDULE'}]) unless FileType.find_by(id: 1).present?

roles = Role.create!([{role: 'SUPERADMIN'}, {role: 'ADMIN'}, {role: 'VIP'},
  {role: 'MEMBER'}]) unless Role.find_by(id: 1).present?
