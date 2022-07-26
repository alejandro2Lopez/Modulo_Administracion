class SessionsController < ApplicationController
  def new; end

  def create
    user = User.find_by(name: params[:name])
    if user.present? && user.password == params[:password] && user.role == 'administrator'
    
      flash[:success] = "Bienvenido #{params[:name]}"
      redirect_to dishes_path
    else
      flash[:danger] = 'Correo o contraseña incorrecto'
      redirect_to sign_in_path
    end
  end
end
