require 'rails_helper'

RSpec.describe "DmdiiDocuments", type: :request do
  describe "GET /dmdii_documents" do
    it "works! (now write some real specs)" do
      get dmdii_documents_path
      expect(response).to have_http_status(200)
    end
  end
end
