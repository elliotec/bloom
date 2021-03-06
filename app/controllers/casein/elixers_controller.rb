# Scaffolding generated by Casein v5.1.1.5

module Casein
  class ElixersController < Casein::CaseinController

    ## optional filters for defining usage according to Casein::AdminUser access_levels
    # before_filter :needs_admin, :except => [:action1, :action2]
    # before_filter :needs_admin_or_current_user, :only => [:action1, :action2]

    def index
      @casein_page_title = 'Elixers'
  		@elixers = Elixer.order(sort_order(:name)).paginate :page => params[:page]
    end

    def show
      @casein_page_title = 'View elixer'
      @elixer = Elixer.find params[:id]
    end

    def new
      @casein_page_title = 'Add a new elixer'
    	@elixer = Elixer.new
    end

    def create
      @elixer = Elixer.new elixer_params

      if @elixer.save
        flash[:notice] = 'Elixer created'
        redirect_to casein_elixers_path
      else
        flash.now[:warning] = 'There were problems when trying to create a new elixer'
        render :action => :new
      end
    end

    def update
      @casein_page_title = 'Update elixer'

      @elixer = Elixer.find params[:id]

      if @elixer.update_attributes elixer_params
        flash[:notice] = 'Elixer has been updated'
        redirect_to casein_elixers_path
      else
        flash.now[:warning] = 'There were problems when trying to update this elixer'
        render :action => :show
      end
    end

    def destroy
      @elixer = Elixer.find params[:id]

      @elixer.destroy
      flash[:notice] = 'Elixer has been deleted'
      redirect_to casein_elixers_path
    end

    private

      def elixer_params
        params.require(:elixer).permit(:name, :short_description, :long_description, :price, :ingredients, :photo)
      end

  end
end
