require "rails_helper"

RSpec.describe VendorItemTypesController, type: :routing do
  describe "routing" do

    it "routes to #index" do
      expect(:get => "/vendor_item_types").to route_to("vendor_item_types#index")
    end

    it "routes to #new" do
      expect(:get => "/vendor_item_types/new").to route_to("vendor_item_types#new")
    end

    it "routes to #show" do
      expect(:get => "/vendor_item_types/1").to route_to("vendor_item_types#show", :id => "1")
    end

    it "routes to #edit" do
      expect(:get => "/vendor_item_types/1/edit").to route_to("vendor_item_types#edit", :id => "1")
    end

    it "routes to #create" do
      expect(:post => "/vendor_item_types").to route_to("vendor_item_types#create")
    end

    it "routes to #update via PUT" do
      expect(:put => "/vendor_item_types/1").to route_to("vendor_item_types#update", :id => "1")
    end

    it "routes to #update via PATCH" do
      expect(:patch => "/vendor_item_types/1").to route_to("vendor_item_types#update", :id => "1")
    end

    it "routes to #destroy" do
      expect(:delete => "/vendor_item_types/1").to route_to("vendor_item_types#destroy", :id => "1")
    end

  end
end
