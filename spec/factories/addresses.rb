FactoryGirl.define do
  factory :address do
    street1 { Faker::Address.street_address }
    city { Faker::Address.city }
    state { Faker::Address.state }
    country "United States"
    zip { Faker::Address.zip }
  end
end
