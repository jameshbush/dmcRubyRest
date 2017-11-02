require 'rails_helper'

RSpec.describe "DmdiiProjectContacts", type: :request do
  describe "GET /dmdii_project_contacts" do
    it "works! (now write some real specs)" do
      get dmdii_project_contacts_path
      expect(response).to have_http_status(200)
    end
  end
end
