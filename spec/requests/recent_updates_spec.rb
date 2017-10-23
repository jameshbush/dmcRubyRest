require 'rails_helper'

RSpec.describe "RecentUpdates", type: :request do
  describe "GET /recent_updates" do
    it "works! (now write some real specs)" do
      get recent_updates_path
      expect(response).to have_http_status(200)
    end
  end
end
