require "rails_helper"

RSpec.describe AreaOfExpertisesController, type: :routing do
  describe "routing" do

    it "routes to #index" do
      expect(:get => "/area_of_expertises").to route_to("area_of_expertises#index")
    end


    it "routes to #show" do
      expect(:get => "/area_of_expertises/1").to route_to("area_of_expertises#show", :id => "1")
    end


    it "routes to #create" do
      expect(:post => "/area_of_expertises").to route_to("area_of_expertises#create")
    end

    it "routes to #update via PUT" do
      expect(:put => "/area_of_expertises/1").to route_to("area_of_expertises#update", :id => "1")
    end

    it "routes to #update via PATCH" do
      expect(:patch => "/area_of_expertises/1").to route_to("area_of_expertises#update", :id => "1")
    end

    it "routes to #destroy" do
      expect(:delete => "/area_of_expertises/1").to route_to("area_of_expertises#destroy", :id => "1")
    end

  end
end
