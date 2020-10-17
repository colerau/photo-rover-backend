class UsersController < ApplicationController
  def index
    users = User.all
  end

  def show
      user = User.find(params[:id])
  end

  def create
      user = User.new(user_params)
      if user.save
          session[:user_id] = user.id 
      else
          render json: user.errors.full_messages
      end
  end


  private 

  def user_params
      params.require(:user).permit(:username)
  end
end 