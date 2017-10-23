require 'rails_helper'

RSpec.describe Address, type: :model do
  # Association test
  # ensure an address record belongs to a single organization record
  it { should belong_to(:organization) }
  # Validation test
  # ensure columns are present before saving
  it { should validate_presence_of(:street1) }
  it { should validate_presence_of(:city) }
  it { should validate_presence_of(:state) }
  it { should validate_presence_of(:country) }
  it { should validate_presence_of(:zip) }
end
