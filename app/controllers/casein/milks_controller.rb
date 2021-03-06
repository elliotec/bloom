# Scaffolding generated by Casein v5.1.1.5

module Casein
  class MilksController < Casein::CaseinController

    ## optional filters for defining usage according to Casein::AdminUser access_levels
    # before_filter :needs_admin, :except => [:action1, :action2]
    # before_filter :needs_admin_or_current_user, :only => [:action1, :action2]

    def index
      @casein_page_title = 'Milks'
  		@milks = Milk.order(sort_order(:name)).paginate :page => params[:page]
    end

    def show
      @casein_page_title = 'View milk'
      @milk = Milk.find params[:id]
    end

    def new
      @casein_page_title = 'Add a new milk'
    	@milk = Milk.new
    end

    def create
      @milk = Milk.new milk_params

      if @milk.save
        flash[:notice] = 'Milk created'
        redirect_to casein_milks_path
      else
        flash.now[:warning] = 'There were problems when trying to create a new milk'
        render :action => :new
      end
    end

    def update
      @casein_page_title = 'Update milk'

      @milk = Milk.find params[:id]

      if @milk.update_attributes milk_params
        flash[:notice] = 'Milk has been updated'
        redirect_to casein_milks_path
      else
        flash.now[:warning] = 'There were problems when trying to update this milk'
        render :action => :show
      end
    end

    def destroy
      @milk = Milk.find params[:id]

      @milk.destroy
      flash[:notice] = 'Milk has been deleted'
      redirect_to casein_milks_path
    end

    private

      def milk_params
        params.require(:milk).permit(:name, :short_description, :long_description, :price, :ingredients, :photo)
      end

  end
end
