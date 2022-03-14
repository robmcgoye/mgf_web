class GalleriesController < ApplicationController
  before_action :set_gallery, only: [:show, :edit, :update, :destroy]
  before_action :require_admin_user, only: [:new, :edit, :update, :destroy]

  def index
    @galleries = Gallery.all
  end

  def show
  end
    
  def new
    @gallery = Gallery.new
  end

  def edit
  end

  def create
    @gallery = Gallery.new(gallery_params)
    if @gallery.save
      flash[:notice] = "Gallery was successfully created."
      redirect_to gallery_url(@gallery)
    else
      render :new
    end
  end

  def update
    if @gallery.update(gallery_params)
      flash[:notice] = "Gallery was successfully updated."
      redirect_to gallery_url(@gallery)
    else
      render :edit
    end
  end

  def destroy
    @gallery.destroy
    flash[:notice] = "Gallery was successfully deleted."
    redirect_to galleries_url
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_gallery
      @gallery = Gallery.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def gallery_params
      params.require(:gallery).permit(:title, :thumbnail, :sort_order, 
                    photos_attributes: [:id, :picture, :caption, :sort_order,:_destroy])
    end
end
