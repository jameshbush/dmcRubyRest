require 'rails_helper'

RSpec.describe DmdiiProject, type: :model do
  # Association tests
  # ensure model has a appropriate relationships with models
  it { should belong_to(:dmdii_project_status) }
  it { should belong_to(:dmdii_project_focus_area) }
  it { should belong_to(:dmdii_project_thrust) }
  # Validation tests
  # ensure columns are present before saving
  it { should validate_presence_of(:project_title) }
  it { should validate_presence_of(:project_summary) }
  it { should validate_presence_of(:project_root_number) }
  it { should validate_presence_of(:project_call_number) }
  it { should validate_presence_of(:project_number) }
end
