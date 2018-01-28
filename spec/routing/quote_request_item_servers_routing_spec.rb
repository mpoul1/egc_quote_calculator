require "rails_helper"

RSpec.describe QuoteRequestItemServersController, type: :routing do
  describe "routing" do

    it "routes to #index" do
      expect(:get => "/quote_request_item_servers").to route_to("quote_request_item_servers#index")
    end

    it "routes to #new" do
      expect(:get => "/quote_request_item_servers/new").to route_to("quote_request_item_servers#new")
    end

    it "routes to #show" do
      expect(:get => "/quote_request_item_servers/1").to route_to("quote_request_item_servers#show", :id => "1")
    end

    it "routes to #edit" do
      expect(:get => "/quote_request_item_servers/1/edit").to route_to("quote_request_item_servers#edit", :id => "1")
    end

    it "routes to #create" do
      expect(:post => "/quote_request_item_servers").to route_to("quote_request_item_servers#create")
    end

    it "routes to #update via PUT" do
      expect(:put => "/quote_request_item_servers/1").to route_to("quote_request_item_servers#update", :id => "1")
    end

    it "routes to #update via PATCH" do
      expect(:patch => "/quote_request_item_servers/1").to route_to("quote_request_item_servers#update", :id => "1")
    end

    it "routes to #destroy" do
      expect(:delete => "/quote_request_item_servers/1").to route_to("quote_request_item_servers#destroy", :id => "1")
    end

  end
end
