FactoryGirl.define do
  factory :user do
    user_name { Faker::Witcher.character }
    realname { Faker::Name.name }
    firstname { Faker::Name.first_name }
    lastname { Faker::Name.last_name }
  end
end
