class UsersController < ApplicationController
  before_action :authenticate_user!, except: [:index, :create]
  skip_before_filter :verify_authenticity_token
  # after_action :authenticate_user!
  respond_to :json
  
  def index

    render json: User.all
  end

  def show
    render json: User.find(params[:id])
  end


  def create
    @user = User.new(user_params)
    if  @user.save
      sign_in @user
      render json: @user
    end
  end

  def destroy
    @user = User.find(params[:id])
    @note.destroy
    head :no_content
  end

  def user_params
    params.require(:user).permit(:first_name, :last_name, :email, :password, :password_confirmation)
  end

end
