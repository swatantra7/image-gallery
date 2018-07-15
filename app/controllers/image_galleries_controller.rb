class ImageGalleriesController < ApplicationController

  def index
    @images = ImageGallery.all
  end

  def new
    @image = ImageGallery.new 
  end

  def show
    @image = ImageGallery.find(params[:id])
  end

  def create
    @image = ImageGallery.new(image_gallery_params)
    if @image.save
      flash[:notice] = 'Your Image is Uploaded Successfully'
      redirect_to image_galleries_path   
    else
      flash[:alert] = 'Invalid File Format Please try again !!!' 
      redirect_to new_image_gallery_path
    end
  end

  private

  def image_gallery_params
    params.fetch(:image_gallery, {}).permit(
      :image_list
    )
  end
end
