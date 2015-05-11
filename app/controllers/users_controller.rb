class UsersController < ApplicationController
  before_action :set_user, only: [:show, :edit, :update, :destroy]

  def new
    @user = User.new
  end

  def create
    @user = User.new(user_params)
    if @user.save
      session[:user_id] = @user.id
      UserMailer.signup_confirmation(@user).deliver
      redirect_to root_url, notice: "Thank you for signing up!"
    else
      render "new"
    end
  end

  private

  def set_user
    @user = User.find(params[:id])
  end

  def user_params
    params.require(:user).permit(:first_name, :last_name, :business_name, :business_address, :industry, :naics_code, :phone, :email, :password, :password_confirmation)
  end
end
