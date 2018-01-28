require 'rails_helper'

RSpec.describe "OsTypes", type: :request do
  describe "GET /os_types" do
    it "works! (now write some real specs)" do
      get os_types_path
      expect(response).to have_http_status(200)
    end
  end
end
