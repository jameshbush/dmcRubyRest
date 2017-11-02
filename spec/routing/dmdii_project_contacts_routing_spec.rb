require "rails_helper"

RSpec.describe DmdiiProjectContactsController, type: :routing do
  describe "routing" do

    it "routes to #index" do
      expect(:get => "/dmdii_project_contacts").to route_to("dmdii_project_contacts#index")
    end


    it "routes to #show" do
      expect(:get => "/dmdii_project_contacts/1").to route_to("dmdii_project_contacts#show", :id => "1")
    end


    it "routes to #create" do
      expect(:post => "/dmdii_project_contacts").to route_to("dmdii_project_contacts#create")
    end

    it "routes to #update via PUT" do
      expect(:put => "/dmdii_project_contacts/1").to route_to("dmdii_project_contacts#update", :id => "1")
    end

    it "routes to #update via PATCH" do
      expect(:patch => "/dmdii_project_contacts/1").to route_to("dmdii_project_contacts#update", :id => "1")
    end

    it "routes to #destroy" do
      expect(:delete => "/dmdii_project_contacts/1").to route_to("dmdii_project_contacts#destroy", :id => "1")
    end

  end
end
