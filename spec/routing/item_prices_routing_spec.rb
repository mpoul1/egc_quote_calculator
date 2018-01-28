require "rails_helper"

RSpec.describe ItemPricesController, type: :routing do
  describe "routing" do

    it "routes to #index" do
      expect(:get => "/item_prices").to route_to("item_prices#index")
    end

    it "routes to #new" do
      expect(:get => "/item_prices/new").to route_to("item_prices#new")
    end

    it "routes to #show" do
      expect(:get => "/item_prices/1").to route_to("item_prices#show", :id => "1")
    end

    it "routes to #edit" do
      expect(:get => "/item_prices/1/edit").to route_to("item_prices#edit", :id => "1")
    end

    it "routes to #create" do
      expect(:post => "/item_prices").to route_to("item_prices#create")
    end

    it "routes to #update via PUT" do
      expect(:put => "/item_prices/1").to route_to("item_prices#update", :id => "1")
    end

    it "routes to #update via PATCH" do
      expect(:patch => "/item_prices/1").to route_to("item_prices#update", :id => "1")
    end

    it "routes to #destroy" do
      expect(:delete => "/item_prices/1").to route_to("item_prices#destroy", :id => "1")
    end

  end
end
