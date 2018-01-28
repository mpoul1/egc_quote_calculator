require "rails_helper"

RSpec.describe CustomerTaxZonesController, type: :routing do
  describe "routing" do

    it "routes to #index" do
      expect(:get => "/customer_tax_zones").to route_to("customer_tax_zones#index")
    end

    it "routes to #new" do
      expect(:get => "/customer_tax_zones/new").to route_to("customer_tax_zones#new")
    end

    it "routes to #show" do
      expect(:get => "/customer_tax_zones/1").to route_to("customer_tax_zones#show", :id => "1")
    end

    it "routes to #edit" do
      expect(:get => "/customer_tax_zones/1/edit").to route_to("customer_tax_zones#edit", :id => "1")
    end

    it "routes to #create" do
      expect(:post => "/customer_tax_zones").to route_to("customer_tax_zones#create")
    end

    it "routes to #update via PUT" do
      expect(:put => "/customer_tax_zones/1").to route_to("customer_tax_zones#update", :id => "1")
    end

    it "routes to #update via PATCH" do
      expect(:patch => "/customer_tax_zones/1").to route_to("customer_tax_zones#update", :id => "1")
    end

    it "routes to #destroy" do
      expect(:delete => "/customer_tax_zones/1").to route_to("customer_tax_zones#destroy", :id => "1")
    end

  end
end
