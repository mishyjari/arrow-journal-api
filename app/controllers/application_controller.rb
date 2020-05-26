class ApplicationController < ActionController::API
  before_action :set_user

    def set_user
      @current_user = User.find_by(id: session[:user_id])
    end

    def authenticate_user
      if !@current_user
        # Something
      end
    end

end
