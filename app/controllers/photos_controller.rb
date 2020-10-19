class PhotosController < ApplicationController

  before_action :find_user

  def index
    photos = @user.photos
    render json: photos
  end

  def show

  end

  def destroy

  end


  private

  def find_user
    @user = User.find(params[:user_id])
  end

end
