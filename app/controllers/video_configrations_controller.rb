class VideoConfigrationsController < ApplicationController
  before_action :set_video_configration, only: [:show, :edit, :update, :destroy]

  def index
    # if params[:shop].present?
    #   @video_configrations = VideoConfigration.where(:shop_name => params[:shop]).order('id ASC')
    # else
    #   redirect_to "https://www.google.com"
    # end
    @video_configrations = VideoConfigration.where(:shop_name => params[:shop]).order('id ASC')
    # @video_configrations = VideoConfigration.where(:shop_name => params[:shop]).order('id ASC')
  end

  def show
  end

  def new
    @video_configration = VideoConfigration.new
  end

  def edit
  end

  def create
    @video_configration = VideoConfigration.new(video_configration_params)
    if @video_configration.save
      redirect_to video_configrations_path(:shop => @video_configration.shop_name)
    else
      render :new
    end
  end

  def update
    if @video_configration.update(video_configration_params)
      redirect_to video_configrations_path(:shop => @video_configration.shop_name)
    else
      render :edit
    end
  end

  def destroy
    shop_name = @video_configration.shop_name
    @video_configration.destroy
    redirect_to video_configrations_path(:shop => shop_name)
  end


  def get_product_video
    video_configrations = VideoConfigration.where(:shop_name => params[:shop], :product_sku => params[:product_sku])
    if video_configrations.count == 1
      video_configration = video_configrations.first
      if not video_configration.avatar.nil?
        render status:200, json: {video_link: video_configration.avatar.url, :video_present => true}  
      else
        render status:200, json: {video_link: "", :video_present => false}
      end
    else
      render status:200, json: {video_link: "", :video_present => false}
    end
  end

  private
    
  def set_video_configration
    @video_configration = VideoConfigration.find(params[:id])
  end

  def video_configration_params
    params.require(:video_configration).permit(:product_sku, :avatar, :shop_name)
  end
  
end
