class Admin::FundsController < ApplicationController
  before_action :set_fund, only: [:show, :edit, :update, :destroy]

  # GET /funds
  # GET /funds.json
  def index
    @funds = Fund.all
    @fund = Fund.new
  end

  # GET /funds/1
  # GET /funds/1.json
  def show
  end

  # GET /funds/new
  def new
    @fund = Fund.new
  end

  # GET /funds/1/edit
  def edit
  end

  # POST /funds
  # POST /funds.json
  def create
    @fund = Fund.new(fund_params)

      if @fund.save
        flash[:success] = "Fund successfully created"
        redirect_to action: "index"
      else
        render :new 
      end
  end

  # PATCH/PUT /funds/1
  # PATCH/PUT /funds/1.json
  def update
      if @fund.update(fund_params)
        flash[:success] = "Fund successfully updated"
        redirect_to action: "index" 
      else
         render :edit 
      end
  end

  # DELETE /funds/1
  # DELETE /funds/1.json
  def destroy
    @fund.destroy
      flash[:success] = "Fund successfully deleted"
      redirect_to funds_url
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_fund
      @fund = Fund.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def fund_params
      params.require(:fund).permit(:employee_id, :fund_type, :employee_share, :organization_share, :description, :status)
    end
end
