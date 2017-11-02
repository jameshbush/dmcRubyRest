require 'rails_helper'

RSpec.describe "DmdiiMemberContacts", type: :request do
  describe "GET /dmdii_member_contacts" do
    it "works! (now write some real specs)" do
      get dmdii_member_contacts_path
      expect(response).to have_http_status(200)
    end
  end
end
