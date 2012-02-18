class Admin::PagesController < AdminApplicationController
  respond_to :html, :json
  
  def index
    @pages = Page.all
  end
  
  def show(id)
    @page = Page.find(id)
  end

  def new
    @page = Page.new
  end

  def create
    @page = Page.new
    
    @page.update_attributes params[:page]
    @page.save
    
    respond_to do |format|
      format.html { redirect_to admin_page(@page.id) }
      format.json { render :json => @page._json }
    end
  end

  def edit(id)
    @page = Page.find(id)
  end

  def update(id)
    @page = Page.find(id)
    
    @page.update_attributes params[:page]
    
    respond_to do |format|
      format.html { redirect_to admin_page(@page.id) }
      format.json { render :json = @page._json }
    end
  end

  def destroy(id)
    @page = Page.find(id)
    @page.destroy
  end
end
