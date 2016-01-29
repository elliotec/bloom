# Scaffolding generated by Casein v5.1.1.5

module Casein
  class ProductsController < Casein::CaseinController
  
    ## optional filters for defining usage according to Casein::AdminUser access_levels
    # before_filter :needs_admin, :except => [:action1, :action2]
    # before_filter :needs_admin_or_current_user, :only => [:action1, :action2]
  
    def index
      @casein_page_title = 'Products'
  		@products = Product.order(sort_order(:name)).paginate :page => params[:page]
    end
  
    def show
      @casein_page_title = 'View product'
      @product = Product.find params[:id]
    end
  
    def new
      @casein_page_title = 'Add a new product'
    	@product = Product.new
    end

    def create
      @product = Product.new product_params
    
      if @product.save
        flash[:notice] = 'Product created'
        redirect_to casein_products_path
      else
        flash.now[:warning] = 'There were problems when trying to create a new product'
        render :action => :new
      end
    end
  
    def update
      @casein_page_title = 'Update product'
      
      @product = Product.find params[:id]
    
      if @product.update_attributes product_params
        flash[:notice] = 'Product has been updated'
        redirect_to casein_products_path
      else
        flash.now[:warning] = 'There were problems when trying to update this product'
        render :action => :show
      end
    end
 
    def destroy
      @product = Product.find params[:id]

      @product.destroy
      flash[:notice] = 'Product has been deleted'
      redirect_to casein_products_path
    end
  
    private
      
      def product_params
        params.require(:product).permit(:name, :description, :price)
      end

  end
end