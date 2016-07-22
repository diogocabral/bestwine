class WinesController < ApplicationController

  before_action :authenticate_user!
  load_and_authorize_resource #:through => :current_user
  before_action :set_wine, only: [:show, :edit, :update, :destroy]

  # GET /wines/1
  def show
  end

  # GET /contest/1/subscribe
  def new    
    @contest = Contest.find(params[:contest_id])

    if @contest.has_ended?
      redirect_to contests_path, notice: 'This contest has ended.' and return
    end

    if current_user.has_subscribed(@contest)
      redirect_to contests_path, notice: 'You have already subscribed for this contest.' and return
    end

    @wine = Wine.new

    render :subscribe
  end

  # GET /wines/1/edit
  def edit
    if @wine.contest.has_ended?
      redirect_to contests_path, notice: 'This contest has ended.' and return
    end
  end

  # POST /contest/1/subscribe
  def create
    contest = Contest.find(params[:contest_id])

    @wine = Wine.new(wine_params)
    
    @wine.user = current_user
    @wine.contest = contest
    
    if @wine.save
      redirect_to contest, notice: 'Wine was successfully created.'
    else
      @contest = contest
      render :subscribe
    end
  end

  # PATCH/PUT /wines/1
  def update
    if @wine.contest.has_ended?
      redirect_to contests_path, notice: 'This contest has ended.' and return
    end

    if @wine.update(wine_params)
      redirect_to @wine, notice: 'Wine was successfully updated.'
    else
      render :edit
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_wine
      @wine = Wine.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def wine_params
      params.require(:wine).permit(:name, :vivino_score, :price, :year, :invoice, :contest, :grape_id, :contest_id, grape_ids: [])
    end
end
