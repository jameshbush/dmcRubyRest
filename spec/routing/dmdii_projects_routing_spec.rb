require "rails_helper"

RSpec.describe DmdiiProjectsController, type: :routing do
  describe "routing" do

    it "routes to #index" do
      expect(:get => "/dmdii_projects").to route_to("dmdii_projects#index")
    end


    it "routes to #show" do
      expect(:get => "/dmdii_projects/1").to route_to("dmdii_projects#show", :id => "1")
    end


    it "routes to #create" do
      expect(:post => "/dmdii_projects").to route_to("dmdii_projects#create")
    end

    it "routes to #update via PUT" do
      expect(:put => "/dmdii_projects/1").to route_to("dmdii_projects#update", :id => "1")
    end

    it "routes to #update via PATCH" do
      expect(:patch => "/dmdii_projects/1").to route_to("dmdii_projects#update", :id => "1")
    end

    it "routes to #destroy" do
      expect(:delete => "/dmdii_projects/1").to route_to("dmdii_projects#destroy", :id => "1")
    end

  end
end
