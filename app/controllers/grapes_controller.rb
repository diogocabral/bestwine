class GrapesController < ApplicationController
  
  # load_and_authorize_resource
  before_action :authenticate_user!
  before_action :set_grape, only: [:show, :edit, :update, :destroy]

  # GET /grapes
  def index
    @grapes = Grape.all.order('name')
  end

  # GET /grapes/1
  def show
  end

  # GET /grapes/new
  def new
    @grape = Grape.new
  end

  # GET /grapes/1/edit
  def edit
  end

  # POST /grapes
  def create
    @grape = Grape.new(grape_params)

    if @grape.save
      redirect_to @grape, notice: 'Grape was successfully created.'
    else
      render :new
    end
  end

  # PATCH/PUT /grapes/1
  def update
    if @grape.update(grape_params)
      redirect_to @grape, notice: 'Grape was successfully updated.'
    else
      render :edit
    end
  end

  # DELETE /grapes/1
  def destroy
    @grape.destroy
    redirect_to grapes_url, notice: 'Grape was successfully destroyed.'
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_grape
      @grape = Grape.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def grape_params
      params.require(:grape).permit(:name)
    end
end
