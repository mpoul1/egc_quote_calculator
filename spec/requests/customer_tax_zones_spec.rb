require 'rails_helper'

RSpec.describe "CustomerTaxZones", type: :request do
  describe "GET /customer_tax_zones" do
    it "works! (now write some real specs)" do
      get customer_tax_zones_path
      expect(response).to have_http_status(200)
    end
  end
end
