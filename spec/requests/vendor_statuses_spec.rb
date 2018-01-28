require 'rails_helper'

RSpec.describe "VendorStatuses", type: :request do
  describe "GET /vendor_statuses" do
    it "works! (now write some real specs)" do
      get vendor_statuses_path
      expect(response).to have_http_status(200)
    end
  end
end
