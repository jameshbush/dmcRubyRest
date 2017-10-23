require "rails_helper"

RSpec.describe DmdiiDocumentsController, type: :routing do
  describe "routing" do

    it "routes to #index" do
      expect(:get => "/dmdii_documents").to route_to("dmdii_documents#index")
    end


    it "routes to #show" do
      expect(:get => "/dmdii_documents/1").to route_to("dmdii_documents#show", :id => "1")
    end


    it "routes to #create" do
      expect(:post => "/dmdii_documents").to route_to("dmdii_documents#create")
    end

    it "routes to #update via PUT" do
      expect(:put => "/dmdii_documents/1").to route_to("dmdii_documents#update", :id => "1")
    end

    it "routes to #update via PATCH" do
      expect(:patch => "/dmdii_documents/1").to route_to("dmdii_documents#update", :id => "1")
    end

    it "routes to #destroy" do
      expect(:delete => "/dmdii_documents/1").to route_to("dmdii_documents#destroy", :id => "1")
    end

  end
end
