require 'rails_helper'

RSpec.describe "Users", type: :request do
  describe "GET /signup" do
    it "retorna sucesso ao acessar a página de cadastro" do
      get signup_path
      expect(response).to have_http_status(:success)
    end
  end

  describe "POST /users" do
    it "cria um novo usuário e redireciona para a home" do
      # Cria os dados de mentirinha que o usuário digitaria no formulário
      user_params = { name: "Aluno Teste", email: "aluno@teste.com", password: "senha123", role: "student" }

      # Espera que, ao fazer o POST, o número total de Usuários no banco aumente em 1
      expect {
        post users_path, params: { user: user_params }
      }.to change(User, :count).by(1)
      
      # Espera que o sistema redirecione o aluno para a página inicial após o cadastro
      expect(response).to redirect_to(root_path)
    end
  end
end