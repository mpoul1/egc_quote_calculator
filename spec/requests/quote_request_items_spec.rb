require 'rails_helper'

RSpec.describe "QuoteRequestItems", type: :request do
  describe "GET /quote_request_items" do
    it "works! (now write some real specs)" do
      get quote_request_items_path
      expect(response).to have_http_status(200)
    end
  end
end
