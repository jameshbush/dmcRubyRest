FactoryGirl.define do
  factory :organization do
    name { Faker::Company.name }
    description { Faker::Company.bs }
    association :address, factory: :address, strategy: :build
    after(:create) do |organization|
      create(:organization_type) unless OrganizationType.find_by(category: 'Industry').present?
    end
  end
  # factory :organization_hash, class:Hash do
  #   name { Faker::Company.name }
  #   description { Faker::Company.bs }
  #   association :address, factory: :address, strategy: :build
  #
  #   initialize_with { [attributes.stringify_keys[:path], attributes.stringify_keys ] }
  # end
end
