require 'rails_helper'

RSpec.describe "HwTypes", type: :request do
  describe "GET /hw_types" do
    it "works! (now write some real specs)" do
      get hw_types_path
      expect(response).to have_http_status(200)
    end
  end
end
