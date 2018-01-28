require "rails_helper"

RSpec.describe OsTypesController, type: :routing do
  describe "routing" do

    it "routes to #index" do
      expect(:get => "/os_types").to route_to("os_types#index")
    end

    it "routes to #new" do
      expect(:get => "/os_types/new").to route_to("os_types#new")
    end

    it "routes to #show" do
      expect(:get => "/os_types/1").to route_to("os_types#show", :id => "1")
    end

    it "routes to #edit" do
      expect(:get => "/os_types/1/edit").to route_to("os_types#edit", :id => "1")
    end

    it "routes to #create" do
      expect(:post => "/os_types").to route_to("os_types#create")
    end

    it "routes to #update via PUT" do
      expect(:put => "/os_types/1").to route_to("os_types#update", :id => "1")
    end

    it "routes to #update via PATCH" do
      expect(:patch => "/os_types/1").to route_to("os_types#update", :id => "1")
    end

    it "routes to #destroy" do
      expect(:delete => "/os_types/1").to route_to("os_types#destroy", :id => "1")
    end

  end
end
