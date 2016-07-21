class ContestsController < ApplicationController

  # load_and_authorize_resource
  before_action :authenticate_user!
  before_action :set_contest, only: [:show, :edit, :update, :destroy]

  # GET /contests
  def index
    @contests = Contest.all.order('name')
  end

  # GET /contests/1
  def show
  end

  # GET /contests/new
  def new
    @contest = Contest.new
  end

  # GET /contests/1/edit
  def edit
  end

  # POST /contests
  def create
    @contest = Contest.new(contest_params)

    if @contest.save
      redirect_to @contest, notice: 'Contest was successfully created.'
    else
      render :new
    end
  end

  # PATCH/PUT /contests/1
  def update
    if @contest.update(contest_params)
      redirect_to @contest, notice: 'Contest was successfully updated.'
    else
      render :edit
    end
  end

  # DELETE /contests/1
  def destroy
    @contest.destroy
    redirect_to contests_url, notice: 'Contest was successfully destroyed.'
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_contest
      @contest = Contest.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def contest_params
      params.require(:contest).permit(:name, :starts_in)
    end
end
