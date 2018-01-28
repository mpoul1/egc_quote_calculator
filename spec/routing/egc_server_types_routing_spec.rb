require "rails_helper"

RSpec.describe EgcServerTypesController, type: :routing do
  describe "routing" do

    it "routes to #index" do
      expect(:get => "/egc_server_types").to route_to("egc_server_types#index")
    end

    it "routes to #new" do
      expect(:get => "/egc_server_types/new").to route_to("egc_server_types#new")
    end

    it "routes to #show" do
      expect(:get => "/egc_server_types/1").to route_to("egc_server_types#show", :id => "1")
    end

    it "routes to #edit" do
      expect(:get => "/egc_server_types/1/edit").to route_to("egc_server_types#edit", :id => "1")
    end

    it "routes to #create" do
      expect(:post => "/egc_server_types").to route_to("egc_server_types#create")
    end

    it "routes to #update via PUT" do
      expect(:put => "/egc_server_types/1").to route_to("egc_server_types#update", :id => "1")
    end

    it "routes to #update via PATCH" do
      expect(:patch => "/egc_server_types/1").to route_to("egc_server_types#update", :id => "1")
    end

    it "routes to #destroy" do
      expect(:delete => "/egc_server_types/1").to route_to("egc_server_types#destroy", :id => "1")
    end

  end
end
