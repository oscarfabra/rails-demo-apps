class UserProfileController < ApplicationController
  def show
    @user_profile = UserProfile.find(params[:id])
  end

  def edit
  	@user_profile = UserProfile.find(params[:id])
  end

  def update
  	@user_profile = UserProfile.find(params[:id])

    if @user_profile.update_attributes(params[:user_profile])
      redirect_to user_profile_path(@user_profile.id), notice: "Perfil actualizado."
    else
      render action: "edit", notice: "No se pudo actualizar. Vuelve a intentarlo."
    end
  end

end
