require "rails_helper"

RSpec.describe DmdiiMemberContactsController, type: :routing do
  describe "routing" do

    it "routes to #index" do
      expect(:get => "/dmdii_member_contacts").to route_to("dmdii_member_contacts#index")
    end


    it "routes to #show" do
      expect(:get => "/dmdii_member_contacts/1").to route_to("dmdii_member_contacts#show", :id => "1")
    end


    it "routes to #create" do
      expect(:post => "/dmdii_member_contacts").to route_to("dmdii_member_contacts#create")
    end

    it "routes to #update via PUT" do
      expect(:put => "/dmdii_member_contacts/1").to route_to("dmdii_member_contacts#update", :id => "1")
    end

    it "routes to #update via PATCH" do
      expect(:patch => "/dmdii_member_contacts/1").to route_to("dmdii_member_contacts#update", :id => "1")
    end

    it "routes to #destroy" do
      expect(:delete => "/dmdii_member_contacts/1").to route_to("dmdii_member_contacts#destroy", :id => "1")
    end

  end
end
