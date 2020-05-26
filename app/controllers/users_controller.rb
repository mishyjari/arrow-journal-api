class UsersController < ApplicationController
  #before_action :find_user, only: [:show, :edit, :update, :destroy]
  #before_action :authenticate_user, only: [:edit, :update, :destroy]

  def index
    users = User.all
    render :json => users
  end

  def create
    user = User.create(
      username: params[:username],
      first_name: params[:first_name],
      last_name: params[:last_name],
      email: params[:email],
      password: params[:password]
    )

    #session[:user_id] = user.id
    render :json => user
      # Something

  end

  def user_params
    params.permit(:username, :first_name, :last_name, :email, :password)
  end
  def find_user
    user = User.find(params[:id])
  end

end
