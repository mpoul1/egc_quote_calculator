require 'rails_helper'

RSpec.describe "EgcServerTypes", type: :request do
  describe "GET /egc_server_types" do
    it "works! (now write some real specs)" do
      get egc_server_types_path
      expect(response).to have_http_status(200)
    end
  end
end
