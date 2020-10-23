class PhotosController < ApplicationController

  before_action :find_user

  def index
    photos = @user.photos
    render json: photos
  end

  def show

  end

  def create
    if @user
      photo = Photo.create(img_url: params[:img_src])
      @user.photos << photo
      @user.save
      render json: @user
    end
  end

  def destroy

  end


  private

  def find_user
    @user = User.find(params[:user_id])
  end

end
