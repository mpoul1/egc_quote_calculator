require 'rails_helper'

RSpec.describe "VendorItemTypes", type: :request do
  describe "GET /vendor_item_types" do
    it "works! (now write some real specs)" do
      get vendor_item_types_path
      expect(response).to have_http_status(200)
    end
  end
end
