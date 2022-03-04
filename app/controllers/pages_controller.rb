class PagesController < ApplicationController
  before_action :require_admin_user, only: [:edit, :update]
  before_action :set_page, only: [:edit, :update, :show]

  def home
    @page = load_page(:home)
  end

  def about
    @page = load_page(:about)
  end
  
  def history
    @page = load_page(:history)
  end
  
  def mission
    @page = load_page(:mission)
  end

  def philosophy
    @page = load_page(:philosophy)
  end

  def edit
  end

  def show
    render @page.name
  end

  def update
    if @page.update(page_params)
      flash.now[:notice] = I18n.t("page.success")
      render @page.name
    else
      render :edit
    end
  end

  private
  
    def load_page(page_name)
      Page.find_by_name(page_name)
    end

    def set_page
      @page = Page.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def page_params
      params.require(:page).permit(:body)
    end
end
