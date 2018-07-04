class UsersController < ApplicationController

  before_action :authenticate_user!

  def index
    @users = User.all.order(:id)
  end

  def edit
    @user = User.find(params[:id])
  end

  def update
    @user = User.find(params[:id])
    if @user.update_attributes(user_params)
      flash[:notice] = "Successfully updated User."
      redirect_to '/users'
    else
      render :action => 'edit'
    end
  end

  private

  def user_params
    params.require(:user).permit(:email, :role)
  end
end
