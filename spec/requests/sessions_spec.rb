require 'rails_helper'

RSpec.describe "Sessions", type: :request do
  describe "GET /login" do
    it "retorna sucesso ao acessar a página de login" do
      get login_path
      expect(response).to have_http_status(:success)
    end
  end
end
