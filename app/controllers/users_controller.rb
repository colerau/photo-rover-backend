class UsersController < ApplicationController
  def index
    users = User.all
    render json: users
  end

  def show
      user = User.find(params[:id])
      render json: user
  end

  def create
      user = User.new(user_params)
      if user.save
          session[:user_id] = user.id 
      else
          render json: user.errors.full_messages
      end
  end

  def destroy
    user = User.find(params[:id])
    user.destroy
  end


  private 

  def user_params
      params.require(:user).permit(:username)
  end
end 