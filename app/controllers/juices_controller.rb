class JuicesController < ApplicationController
  before_action :set_juice, only: [:show, :edit, :update, :destroy]

  # GET /juices
  # GET /juices.json
  def index
    @juices = Juice.all
  end

  # GET /juices/1
  # GET /juices/1.json
  def show
  end

  # GET /juices/new
  def new
    @juice = Juice.new
  end

  # GET /juices/1/edit
  def edit
  end

  # POST /juices
  # POST /juices.json
  def create
    @juice = Juice.new(juice_params)

    respond_to do |format|
      if @juice.save
        format.html { redirect_to @juice, notice: 'Juice was successfully created.' }
        format.json { render :show, status: :created, location: @juice }
      else
        format.html { render :new }
        format.json { render json: @juice.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /juices/1
  # PATCH/PUT /juices/1.json
  def update
    respond_to do |format|
      if @juice.update(juice_params)
        format.html { redirect_to @juice, notice: 'Juice was successfully updated.' }
        format.json { render :show, status: :ok, location: @juice }
      else
        format.html { render :edit }
        format.json { render json: @juice.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /juices/1
  # DELETE /juices/1.json
  def destroy
    @juice.destroy
    respond_to do |format|
      format.html { redirect_to juices_url, notice: 'Juice was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_juice
      @juice = Juice.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def juice_params
      params[:juice]
    end
end
