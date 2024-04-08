class UsersController < ApplicationController
  before_action :authenticate_user!, only: [:show]

  def show
    @user = User.find(params[:id])
  end

  def edit
    @user = current_user
  end

  # def update 
  #   if current_user.update(user_params)
  #     redirect_to current_user, notice: 'Profile successfully updated...'
  #   else
  #     render :edit
  #   end
  # end

  private 

  def user_params
   params.require(:user).permit(:first_name, :last_name, :email, :password, :password_confirmation, :avatar)
  end
end
