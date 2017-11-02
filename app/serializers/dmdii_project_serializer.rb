class DmdiiProjectSerializer < ApplicationSerializer
  attributes :id, :status, :awarded_date, :end_date, :project_title,
  :project_summary, :focus_area, :project_number, :cost_share, :cost_share,
  :dmdii_funding, :dmdii_funding, :is_deleted, :is_event, :project_identifier

  attribute :project_root_number, key: 'rootNumber'
  attribute :project_call_number, key: 'callNumber'

  has_one :dmdii_project_thrust, key: :thrust
  has_one :user, key: :principal_point_of_contact, serializer: UserBasicSerializer
  has_one :organization, key: :organization_dmdii_member, serializer: OrgBasicSerializer
  has_one :dmdii_project_contact, key: :principal_investigator

  def status
    "#{object.dmdii_project_status.name}"
  end

  def focus_area
    "#{object.dmdii_project_focus_area.name}"
  end

  def project_identifier
    "#{object.project_root_number}-#{object.project_call_number}-#{object.project_number}"
  end
end
