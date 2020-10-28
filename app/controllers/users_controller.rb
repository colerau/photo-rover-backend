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
          render json: user
      else
          render json: user.errors.full_messages
      end
  end

  def destroy
    user = User.find(params[:userId])
    if user
      user.destroy
      render json: {"success": "true"}
    end
  end


  private

  def user_params
      params.require(:user).permit(:username, :id, :user_id, :userId)
  end
end 