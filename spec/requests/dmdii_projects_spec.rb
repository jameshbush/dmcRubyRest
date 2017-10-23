require 'rails_helper'

RSpec.describe "DmdiiProjects", type: :request do
  describe "GET /dmdii_projects" do
    it "works! (now write some real specs)" do
      get dmdii_projects_path
      expect(response).to have_http_status(200)
    end
  end
end
