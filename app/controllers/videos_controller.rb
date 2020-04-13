class VideosController < ApplicationController
  before_action :set_video, only: [:edit, :update, :destroy, :show]
  skip_before_action :authenticate_user!, only: :index
  
  def my_videos
    @videos = Video.where(user: current_user)
    authorize @videos
  end
  
  def index
    @videos = policy_scope(Video)
  end

  def show
  end
  
  def new
    @video = Video.new
    @user = current_user
    authorize @video
  end

  def create
    @video = Video.new(video_params)
    authorize @video
    @video.user = current_user
    @video.views = 0
    if @video.save
      redirect_to root_path
    else
      render :new
    end
  end

  def edit
    @user = User.find(params[:user_id])
  end

  def update
    if @video.update(video_params)
      redirect_to my_videos_path
    else
      render :edit
    end
  end
  
  def destroy
    @video.destroy
    redirect_to my_videos_path
  end
  
  private

  def video_params
    params.require(:video).permit(:title, :description, :url, :user_id, :id)
  end

  def set_video
    @video = Video.find(params[:id])
    authorize @video
  end
  

end
