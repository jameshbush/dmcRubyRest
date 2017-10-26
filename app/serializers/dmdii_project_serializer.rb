class DmdiiProjectSerializer < ApplicationSerializer
  attributes :id, :status, :awarded_date, :end_date, :project_title,
  :project_summary, :focus_area, :thrust, :project_root_number,
  :project_call_number, :project_number, :cost_share, :cost_share, :dmdii_funding,
  :dmdii_funding, :is_deleted, :is_event

  has_one :user, key: :principal_point_of_contact, serializer: UserBasicSerializer
  has_one :organization, key: :organization_dmdii_member
  has_one :user, key: :principal_investigator

  def status
    "#{object.dmdii_project_status.name}"
  end

  def focus_area
    "#{object.dmdii_project_focus_area.name}"
  end

  def thrust
    "#{object.dmdii_project_thrust.code}"
  end
end
