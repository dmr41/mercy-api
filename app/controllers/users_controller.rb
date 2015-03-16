class UsersController < ApplicationController

  skip_before_filter :verify_authenticity_token
  
  def index
    render json: User.all
  end

  def show
    render json: User.find(params[:id])
  end

  def create
    @user = User.new(user_params)
    @user.save
    render json: @user
  end

  def destroy
    @user = User.find(params[:id])
    @note.destroy
    head :no_content
  end

  def user_params
    params.require(:user).permit(:first_name, :last_name, :email, :pwd)
  end

end
