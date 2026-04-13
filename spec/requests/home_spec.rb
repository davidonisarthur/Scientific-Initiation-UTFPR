require 'rails_helper'

RSpec.describe "Homes", type: :request do
  describe "GET /" do
    it "returns success (HTTP 200) in landing page" do
      get root_path
      expect(response).to have_http_status(:success)
    end
  end
end
