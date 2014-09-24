class UsersController < ApplicationController
  def new
    @user = User.new

  end
  
  def create
    @user = User.new(params[:user])

    @user.user_profile = UserProfile.new(user_id: @user.id, full_name: params[:user][:username])

    if @user.save
        redirect_to root_path, notice: "Registrado satisfactoriamente."    
    else
      render 'new'
    end
  end
end
