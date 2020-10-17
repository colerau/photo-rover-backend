class SessionsController < ApplicationController
  def create
    user = User.find_by(username: params[:username])

    if user
        session[:user_id] = user.id
    else
        render json: { message: "User not found" }
    end
end

def destroy 
    if session[:user_id]
        reset_session
    end
end
