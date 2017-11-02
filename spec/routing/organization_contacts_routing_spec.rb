require "rails_helper"

RSpec.describe OrganizationContactsController, type: :routing do
  describe "routing" do

    it "routes to #index" do
      expect(:get => "/organization_contacts").to route_to("organization_contacts#index")
    end


    it "routes to #show" do
      expect(:get => "/organization_contacts/1").to route_to("organization_contacts#show", :id => "1")
    end


    it "routes to #create" do
      expect(:post => "/organization_contacts").to route_to("organization_contacts#create")
    end

    it "routes to #update via PUT" do
      expect(:put => "/organization_contacts/1").to route_to("organization_contacts#update", :id => "1")
    end

    it "routes to #update via PATCH" do
      expect(:patch => "/organization_contacts/1").to route_to("organization_contacts#update", :id => "1")
    end

    it "routes to #destroy" do
      expect(:delete => "/organization_contacts/1").to route_to("organization_contacts#destroy", :id => "1")
    end

  end
end
