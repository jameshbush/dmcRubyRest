require "rails_helper"

RSpec.describe UserRoleAssignmentsController, type: :routing do
  describe "routing" do

    it "routes to #index" do
      expect(:get => "/user_role_assignments").to route_to("user_role_assignments#index")
    end


    it "routes to #show" do
      expect(:get => "/user_role_assignments/1").to route_to("user_role_assignments#show", :id => "1")
    end


    it "routes to #create" do
      expect(:post => "/user_role_assignments").to route_to("user_role_assignments#create")
    end

    it "routes to #update via PUT" do
      expect(:put => "/user_role_assignments/1").to route_to("user_role_assignments#update", :id => "1")
    end

    it "routes to #update via PATCH" do
      expect(:patch => "/user_role_assignments/1").to route_to("user_role_assignments#update", :id => "1")
    end

    it "routes to #destroy" do
      expect(:delete => "/user_role_assignments/1").to route_to("user_role_assignments#destroy", :id => "1")
    end

  end
end
