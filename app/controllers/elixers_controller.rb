class ElixersController < ApplicationController
  before_action :set_elixer, only: [:show, :edit, :update, :destroy]

  # GET /elixers
  # GET /elixers.json
  def index
    @elixers = Elixer.all
  end

  # GET /elixers/1
  # GET /elixers/1.json
  def show
  end

  # GET /elixers/new
  def new
    @elixer = Elixer.new
  end

  # GET /elixers/1/edit
  def edit
  end

  # POST /elixers
  # POST /elixers.json
  def create
    @elixer = Elixer.new(elixer_params)

    respond_to do |format|
      if @elixer.save
        format.html { redirect_to @elixer, notice: 'Elixer was successfully created.' }
        format.json { render :show, status: :created, location: @elixer }
      else
        format.html { render :new }
        format.json { render json: @elixer.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /elixers/1
  # PATCH/PUT /elixers/1.json
  def update
    respond_to do |format|
      if @elixer.update(elixer_params)
        format.html { redirect_to @elixer, notice: 'Elixer was successfully updated.' }
        format.json { render :show, status: :ok, location: @elixer }
      else
        format.html { render :edit }
        format.json { render json: @elixer.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /elixers/1
  # DELETE /elixers/1.json
  def destroy
    @elixer.destroy
    respond_to do |format|
      format.html { redirect_to elixers_url, notice: 'Elixer was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_elixer
      @elixer = Elixer.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def elixer_params
      params[:elixer]
    end
end
