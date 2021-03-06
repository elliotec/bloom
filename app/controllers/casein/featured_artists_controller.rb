# Scaffolding generated by Casein v5.1.1.5

module Casein
  class FeaturedArtistsController < Casein::CaseinController

    ## optional filters for defining usage according to Casein::AdminUser access_levels
    # before_filter :needs_admin, :except => [:action1, :action2]
    # before_filter :needs_admin_or_current_user, :only => [:action1, :action2]

    def index
      @casein_page_title = 'Featured artists'
  		@featured_artists = FeaturedArtist.order(sort_order(:name)).paginate :page => params[:page]
    end

    def show
      @casein_page_title = 'View featured artist'
      @featured_artist = FeaturedArtist.find params[:id]
    end

    def new
      @casein_page_title = 'Add a new featured artist'
    	@featured_artist = FeaturedArtist.new
    end

    def create
      @featured_artist = FeaturedArtist.new featured_artist_params

      if @featured_artist.save
        flash[:notice] = 'Featured artist created'
        redirect_to casein_featured_artists_path
      else
        flash.now[:warning] = 'There were problems when trying to create a new featured artist'
        render :action => :new
      end
    end

    def update
      @casein_page_title = 'Update featured artist'

      @featured_artist = FeaturedArtist.find params[:id]

      if @featured_artist.update_attributes featured_artist_params
        flash[:notice] = 'Featured artist has been updated'
        redirect_to casein_featured_artists_path
      else
        flash.now[:warning] = 'There were problems when trying to update this featured artist'
        render :action => :show
      end
    end

    def destroy
      @featured_artist = FeaturedArtist.find params[:id]

      @featured_artist.destroy
      flash[:notice] = 'Featured artist has been deleted'
      redirect_to casein_featured_artists_path
    end

    private

      def featured_artist_params
        params.require(:featured_artist).permit(:name, :bio, :bio2, :link, :link2, :photo1, :photo2)
      end

  end
end
