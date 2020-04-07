class VideosController < ApplicationController
  skip_before_action :authenticate_user!, only: :index
  def index
    @videos = policy_scope(Video)
  end
  
end
