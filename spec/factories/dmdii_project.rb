FactoryGirl.define do
  factory :dmdii_project do
    project_title { Faker::Company.name }
    project_summary { Faker::Company.bs }
    project_root_number 12
    project_call_number 14
    project_number 16
    dmdii_project_status
    dmdii_project_focus_area
    dmdii_project_thrust
    after(:create) do |dmdii_project|
      create(:dmdii_project_status, id: 1) unless DmdiiProjectStatus.find_by(id: 1).present?
      create(:dmdii_project_focus_area, id: 1) unless DmdiiProjectFocusArea.find_by(id: 1).present?
      create(:dmdii_project_thrust, id: 1) unless DmdiiProjectThrust.find_by(id: 1).present?
      create(:user, id: 1) unless User.find_by(id: 1).present?
    end
    # association :dmdii_project_status, factory: :dmdii_project_status, strategy: :build
    # association :dmdii_project_focus_area, factory: :dmdii_project_focus_area, strategy: :build
    # association :dmdii_project_status, factory: :dmdii_project_thrust, strategy: :build
  end

  factory :dmdii_project_status do
    name "pre-awarded"
  end

  factory :dmdii_project_focus_area do
    name "Cyber Security"
  end

  factory :dmdii_project_thrust do
    name "Digital Manufacturing Commons"
    code "DMC"
  end
end
