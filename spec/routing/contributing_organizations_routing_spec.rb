require "rails_helper"

RSpec.describe ContributingOrganizationsController, type: :routing do
  describe "routing" do

    it "routes to #index" do
      expect(:get => "/contributing_organizations").to route_to("contributing_organizations#index")
    end


    it "routes to #show" do
      expect(:get => "/contributing_organizations/1").to route_to("contributing_organizations#show", :id => "1")
    end


    it "routes to #create" do
      expect(:post => "/contributing_organizations").to route_to("contributing_organizations#create")
    end

    it "routes to #update via PUT" do
      expect(:put => "/contributing_organizations/1").to route_to("contributing_organizations#update", :id => "1")
    end

    it "routes to #update via PATCH" do
      expect(:patch => "/contributing_organizations/1").to route_to("contributing_organizations#update", :id => "1")
    end

    it "routes to #destroy" do
      expect(:delete => "/contributing_organizations/1").to route_to("contributing_organizations#destroy", :id => "1")
    end

  end
end
