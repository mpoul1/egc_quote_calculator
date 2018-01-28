require "rails_helper"

RSpec.describe QuoteRequestItemStoragesController, type: :routing do
  describe "routing" do

    it "routes to #index" do
      expect(:get => "/quote_request_item_storages").to route_to("quote_request_item_storages#index")
    end

    it "routes to #new" do
      expect(:get => "/quote_request_item_storages/new").to route_to("quote_request_item_storages#new")
    end

    it "routes to #show" do
      expect(:get => "/quote_request_item_storages/1").to route_to("quote_request_item_storages#show", :id => "1")
    end

    it "routes to #edit" do
      expect(:get => "/quote_request_item_storages/1/edit").to route_to("quote_request_item_storages#edit", :id => "1")
    end

    it "routes to #create" do
      expect(:post => "/quote_request_item_storages").to route_to("quote_request_item_storages#create")
    end

    it "routes to #update via PUT" do
      expect(:put => "/quote_request_item_storages/1").to route_to("quote_request_item_storages#update", :id => "1")
    end

    it "routes to #update via PATCH" do
      expect(:patch => "/quote_request_item_storages/1").to route_to("quote_request_item_storages#update", :id => "1")
    end

    it "routes to #destroy" do
      expect(:delete => "/quote_request_item_storages/1").to route_to("quote_request_item_storages#destroy", :id => "1")
    end

  end
end
