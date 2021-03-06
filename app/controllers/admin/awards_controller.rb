class Admin::AwardsController < ApplicationController
  before_action :set_award, only: [:show, :edit, :update, :destroy]

  # GET /awards
  # GET /awards.json
  def index
    @awards = Award.all
    @award = Award.new
  end

  # GET /awards/1
  # GET /awards/1.json
  def show
  end

  # GET /awards/new
  def new
    @award = Award.new
  end

  # GET /awards/1/edit
  def edit
  end

  # POST /awards
  # POST /awards.json
  def create
    @award = Award.new(award_params)

    if @award.save
      flash[:success] = "Award successfully created"
      redirect_to action: "index"
    else
      @awards = Award.all
      render 'new', locals: {award: @award, awards:@awards}
    end
  end

  def update

    if @award.update(award_params)
      flash[:success] = "Award successfully updated"
      redirect_to action: "index"
    else
      render 'edit'
    end
  end

  def destroy
    @award.destroy
    flash[:success] = "Award successfully deleted"
    redirect_to action: "index"
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_award
      @award = Award.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def award_params
      params.require(:award).permit(:name, :employee_id, :gift_item, :cash_price, :month, :year)
    end
end
