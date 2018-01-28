require "rails_helper"

RSpec.describe HwTypesController, type: :routing do
  describe "routing" do

    it "routes to #index" do
      expect(:get => "/hw_types").to route_to("hw_types#index")
    end

    it "routes to #new" do
      expect(:get => "/hw_types/new").to route_to("hw_types#new")
    end

    it "routes to #show" do
      expect(:get => "/hw_types/1").to route_to("hw_types#show", :id => "1")
    end

    it "routes to #edit" do
      expect(:get => "/hw_types/1/edit").to route_to("hw_types#edit", :id => "1")
    end

    it "routes to #create" do
      expect(:post => "/hw_types").to route_to("hw_types#create")
    end

    it "routes to #update via PUT" do
      expect(:put => "/hw_types/1").to route_to("hw_types#update", :id => "1")
    end

    it "routes to #update via PATCH" do
      expect(:patch => "/hw_types/1").to route_to("hw_types#update", :id => "1")
    end

    it "routes to #destroy" do
      expect(:delete => "/hw_types/1").to route_to("hw_types#destroy", :id => "1")
    end

  end
end
