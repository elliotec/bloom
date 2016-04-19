class CleansesController < ApplicationController
  before_action :set_cleanse, only: [:show, :edit, :update, :destroy]

  # GET /cleanses
  # GET /cleanses.json
  def index
    @cleanses = Cleanse.all
  end

  # GET /cleanses/1
  # GET /cleanses/1.json
  def show
  end

  # GET /cleanses/new
  def new
    @cleanse = Cleanse.new
  end

  # GET /cleanses/1/edit
  def edit
  end

  # POST /cleanses
  # POST /cleanses.json
  def create
    @cleanse = Cleanse.new(cleanse_params)

    respond_to do |format|
      if @cleanse.save
        format.html { redirect_to @cleanse, notice: 'Cleanse was successfully created.' }
        format.json { render :show, status: :created, location: @cleanse }
      else
        format.html { render :new }
        format.json { render json: @cleanse.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /cleanses/1
  # PATCH/PUT /cleanses/1.json
  def update
    respond_to do |format|
      if @cleanse.update(cleanse_params)
        format.html { redirect_to @cleanse, notice: 'Cleanse was successfully updated.' }
        format.json { render :show, status: :ok, location: @cleanse }
      else
        format.html { render :edit }
        format.json { render json: @cleanse.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /cleanses/1
  # DELETE /cleanses/1.json
  def destroy
    @cleanse.destroy
    respond_to do |format|
      format.html { redirect_to cleanses_url, notice: 'Cleanse was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_cleanse
      @cleanse = Cleanse.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def cleanse_params
      params.require(:cleanse).permit(:name, :short_description, :long_description, :price, :ingredients, :photo)
    end
end
