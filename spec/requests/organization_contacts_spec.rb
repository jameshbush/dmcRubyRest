require 'rails_helper'

RSpec.describe "OrganizationContacts", type: :request do
  describe "GET /organization_contacts" do
    it "works! (now write some real specs)" do
      get organization_contacts_path
      expect(response).to have_http_status(200)
    end
  end
end
