require 'rails_helper'

RSpec.describe "DmdiiProjectUpdates", type: :request do
  describe "GET /dmdii_project_updates" do
    it "works! (now write some real specs)" do
      get dmdii_project_updates_path
      expect(response).to have_http_status(200)
    end
  end
end
