require "rails_helper"

RSpec.describe QuoteRequestItemsController, type: :routing do
  describe "routing" do

    it "routes to #index" do
      expect(:get => "/quote_request_items").to route_to("quote_request_items#index")
    end

    it "routes to #new" do
      expect(:get => "/quote_request_items/new").to route_to("quote_request_items#new")
    end

    it "routes to #show" do
      expect(:get => "/quote_request_items/1").to route_to("quote_request_items#show", :id => "1")
    end

    it "routes to #edit" do
      expect(:get => "/quote_request_items/1/edit").to route_to("quote_request_items#edit", :id => "1")
    end

    it "routes to #create" do
      expect(:post => "/quote_request_items").to route_to("quote_request_items#create")
    end

    it "routes to #update via PUT" do
      expect(:put => "/quote_request_items/1").to route_to("quote_request_items#update", :id => "1")
    end

    it "routes to #update via PATCH" do
      expect(:patch => "/quote_request_items/1").to route_to("quote_request_items#update", :id => "1")
    end

    it "routes to #destroy" do
      expect(:delete => "/quote_request_items/1").to route_to("quote_request_items#destroy", :id => "1")
    end

  end
end
