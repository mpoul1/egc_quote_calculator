require 'rails_helper'

RSpec.describe "VendorItems", type: :request do
  describe "GET /vendor_items" do
    it "works! (now write some real specs)" do
      get vendor_items_path
      expect(response).to have_http_status(200)
    end
  end
end
