class Admin::PagesController < Admin::AdminApplicationController
  respond_to :html, :json
  
  def index
    @pages = Page.all
  end
  
  def show
    @page = Page.find(params[:id])
    
    if @page.nil? then page_not_found_error end
  end

  def new
    @page = Page.new
  end

  def create
    @page = Page.new
    
    @page.update_attributes params[:page]
    @page.save
    
    respond_to do |format|
      format.html { redirect_to admin_pages_path }
      format.json { render :json => @page._json }
    end
  end

  def edit
    @page = Page.find(params[:id])
    
    if @page.nil? then page_not_found_error end
  end

  def update
    @page = Page.find(params[:id])
    
    @page.update_attributes params[:page]
    
    respond_to do |format|
      format.html { redirect_to admin_page(@page.id) }
      format.json { render :json => @page._json }
    end
  end

  def destroy
    @page = Page.find(params[:id])
    
    unless @page.nil?
      @page.destroy
      
      respond_to do |format|
        format.html { redirect_to admin_pages_path, :notice => "The page has been deleted." }
        format.json { head :ok }
      end
    else
      page_not_found_error
    end
  end
  
  private
    def page_not_found_error
      respond_to do |format|
        format.html { redirect_to admin_pages_path, :alert => "That page was not found." }
        format.json { head :not_found }
      end
    end
end
