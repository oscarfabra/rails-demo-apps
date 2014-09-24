class SessionsController < ApplicationController
  def new
    
  end
  
  def create
    user = User.find_by_username(params[:username])
    if user && user.authenticate(params[:password])
      session[:user] = user
      redirect_to root_path, notice: "Has ingresado."
    else
      flash[:error] = "No te pudimos ingresar."
      render 'new'
    end
  end
  
  def destroy
    session[:user] = nil
    redirect_to root_path, notice: "Gracias por tu visita."
  end
end
