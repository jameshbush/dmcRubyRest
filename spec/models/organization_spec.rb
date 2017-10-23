require 'rails_helper'

RSpec.describe Organization, type: :model do
  # Association test
  # ensure Organization model has a 1:1 relationship with the Address model
  it { should have_one(:address).dependent(:destroy) }
  # Validation tests
  # ensure columns name and description are present before saving
  it { should validate_presence_of(:name) }
  it { should validate_presence_of(:description) }
end
