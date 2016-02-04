# Scaffolding generated by Casein v5.1.1.5

module Casein
  class CleansesController < Casein::CaseinController
  
    ## optional filters for defining usage according to Casein::AdminUser access_levels
    # before_filter :needs_admin, :except => [:action1, :action2]
    # before_filter :needs_admin_or_current_user, :only => [:action1, :action2]
  
    def index
      @casein_page_title = 'Cleanses'
  		@cleanses = Cleanse.order(sort_order(:name)).paginate :page => params[:page]
    end
  
    def show
      @casein_page_title = 'View cleanse'
      @cleanse = Cleanse.find params[:id]
    end
  
    def new
      @casein_page_title = 'Add a new cleanse'
    	@cleanse = Cleanse.new
    end

    def create
      @cleanse = Cleanse.new cleanse_params
    
      if @cleanse.save
        flash[:notice] = 'Cleanse created'
        redirect_to casein_cleanses_path
      else
        flash.now[:warning] = 'There were problems when trying to create a new cleanse'
        render :action => :new
      end
    end
  
    def update
      @casein_page_title = 'Update cleanse'
      
      @cleanse = Cleanse.find params[:id]
    
      if @cleanse.update_attributes cleanse_params
        flash[:notice] = 'Cleanse has been updated'
        redirect_to casein_cleanses_path
      else
        flash.now[:warning] = 'There were problems when trying to update this cleanse'
        render :action => :show
      end
    end
 
    def destroy
      @cleanse = Cleanse.find params[:id]

      @cleanse.destroy
      flash[:notice] = 'Cleanse has been deleted'
      redirect_to casein_cleanses_path
    end
  
    private
      
      def cleanse_params
        params.require(:cleanse).permit(:name, :short_description, :price, :ingredients, :long_description)
      end

  end
end