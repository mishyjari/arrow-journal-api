class UsersController < ApplicationController
  #before_action :find_user, only: [:show, :edit, :update, :destroy]
  #before_action :authenticate_user, only: [:edit, :update, :destroy]

  def index
    users = User.all
    render :json => users
  end

  def create
    user = User.new(user_params)
    user.first_name = user.first_name.titleize
    user.last_name = user.last_name.titleize

    if user.save
      session[:user_id] = user.id
    else
      # Something
    end
  end

    def user_params
      params.require(:user).permit(:username, :first_name, :last_name, :email, :password)
    end
    def find_user
      user = User.find(params[:id])
    end
end
