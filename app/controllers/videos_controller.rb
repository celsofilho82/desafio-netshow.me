class VideosController < ApplicationController
  skip_before_action :authenticate_user!, only: :index
  
  def index
    @videos = policy_scope(Video)
  end
  
  def new
    @video = Video.new
    @user = current_user
    authorize @video
  end

  def create
    @video = Video.new(video_params)
    @video.user = current_user
    authorize @video
    @video.save
    if @video.save
      redirect_to root_path
    else
      render :new
    end
  end
  
  private

  def video_params
    params.require(:video).permit(:title, :description, :url, :user_id)
  end

end
