require "rails_helper"

RSpec.describe RecentUpdatesController, type: :routing do
  describe "routing" do

    it "routes to #index" do
      expect(:get => "/recent_updates").to route_to("recent_updates#index")
    end


    it "routes to #show" do
      expect(:get => "/recent_updates/1").to route_to("recent_updates#show", :id => "1")
    end


    it "routes to #create" do
      expect(:post => "/recent_updates").to route_to("recent_updates#create")
    end

    it "routes to #update via PUT" do
      expect(:put => "/recent_updates/1").to route_to("recent_updates#update", :id => "1")
    end

    it "routes to #update via PATCH" do
      expect(:patch => "/recent_updates/1").to route_to("recent_updates#update", :id => "1")
    end

    it "routes to #destroy" do
      expect(:delete => "/recent_updates/1").to route_to("recent_updates#destroy", :id => "1")
    end

  end
end
