class LibrariesController < ApplicationController
  before_action :set_library, only: [:show, :edit, :update, :destroy]
  before_action :require_admin_user, only: [:new, :edit, :update, :destroy]

  def index
    @libraries = Library.all
  end

  def show
    if @library.action != "page"
      redirect_to libraries_path
    end
  end
    
  def new
    @library = Library.new
  end

  def edit
  end

  def create
    @library = Library.new(library_params)
    if @library.save
      flash[:notice] = I18n.t("gallery.created")
      redirect_to library_url(@library)
    else
      render :new
    end
  end

  def update
    if @library.update(library_params)
      flash[:notice] = I18n.t("gallery.updated")
      redirect_to library_url(@library)
    else
      render :edit
    end
  end

  def destroy
    @library.destroy
    flash[:notice] = I18n.t("gallery.deleted")
    redirect_to libraries_url
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_library
      @library = Library.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def library_params
      params.require(:library).permit(:title, :action, :link, :thumbnail, :body, 
              subtitles_attributes: [:id, :title, :link, :thumbnail, :_destroy])
    end
end
