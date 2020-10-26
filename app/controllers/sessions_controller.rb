class SessionsController < ApplicationController
  def create
    user = User.find_by(username: params[:username])

    if user
        session[:user_id] = user.id
        object = {user: user, photos: user.photos}
        render json: object
    else
        render json: { message: "User not found" }
    end
  end

  # see who is currently logged in
  def show
    if session[:user_id]
      user = User.find_by(id: session[:user_id])
      render json: user
    end
  end

  def destroy 
    if session[:user_id]
        reset_session
    end 
  end
  
end
