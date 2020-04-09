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
    @video.views = 0
    if @video.save
      redirect_to root_path
      authorize @video
    else
      render :new
    end
  end

  def show
    @videos = Video.where(:user == current_user)
    authorize @videos
  end
  
  
  private

  def video_params
    params.require(:video).permit(:title, :description, :url, :user_id)
  end

end
