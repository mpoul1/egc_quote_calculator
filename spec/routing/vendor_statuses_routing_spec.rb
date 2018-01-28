require "rails_helper"

RSpec.describe VendorStatusesController, type: :routing do
  describe "routing" do

    it "routes to #index" do
      expect(:get => "/vendor_statuses").to route_to("vendor_statuses#index")
    end

    it "routes to #new" do
      expect(:get => "/vendor_statuses/new").to route_to("vendor_statuses#new")
    end

    it "routes to #show" do
      expect(:get => "/vendor_statuses/1").to route_to("vendor_statuses#show", :id => "1")
    end

    it "routes to #edit" do
      expect(:get => "/vendor_statuses/1/edit").to route_to("vendor_statuses#edit", :id => "1")
    end

    it "routes to #create" do
      expect(:post => "/vendor_statuses").to route_to("vendor_statuses#create")
    end

    it "routes to #update via PUT" do
      expect(:put => "/vendor_statuses/1").to route_to("vendor_statuses#update", :id => "1")
    end

    it "routes to #update via PATCH" do
      expect(:patch => "/vendor_statuses/1").to route_to("vendor_statuses#update", :id => "1")
    end

    it "routes to #destroy" do
      expect(:delete => "/vendor_statuses/1").to route_to("vendor_statuses#destroy", :id => "1")
    end

  end
end
