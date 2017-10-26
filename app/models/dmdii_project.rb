class DmdiiProject < ApplicationRecord
  #Model associations
  has_many :contributing_organizations
  has_many :dmdii_project_updates
  belongs_to :user, foreign_key: 'principal_point_of_contact_id', optional: true
  belongs_to :organization, foreign_key: 'organization_dmdii_member_id', optional: true
  # belongs_to :dmdii_project_contact, foreign_key: 'principal_investigator_id', optional: true
  belongs_to :dmdii_project_thrust, foreign_key: 'thrust_id'
  belongs_to :dmdii_project_focus_area, foreign_key: 'focus_area_id'
  belongs_to :dmdii_project_status, foreign_key: 'status_id'

  validates_presence_of :project_title, :project_summary, :project_root_number, :project_call_number, :project_number
end
