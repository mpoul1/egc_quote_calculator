require 'rails_helper'

RSpec.describe "QuoteRequestItemServers", type: :request do
  describe "GET /quote_request_item_servers" do
    it "works! (now write some real specs)" do
      get quote_request_item_servers_path
      expect(response).to have_http_status(200)
    end
  end
end
