class SessionsController < ApplicationController
  def new
  end

  def create
    # Busca o usuário pelo e-mail digitado
    user = User.find_by(email: params[:email])

    # Verifica se o usuário existe E se a senha está correta
    if user && user.authenticate(params[:password])
      # Salva o ID do usuário na sessão (Login efetuado!)
      session[:user_id] = user.id
      redirect_to root_path
    else
      # Se errar a senha ou e-mail, mostra a tela de login de novo
      flash.now[:alert] = "E-mail ou senha inválidos."
      render :new, status: :unprocessable_entity
    end
  end

  def destroy
    # Remove o ID da sessão (Logout efetuado!)
    session[:user_id] = nil
    redirect_to root_path
  end
end
