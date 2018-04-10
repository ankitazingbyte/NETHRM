class Admin::SalslipsController < ApplicationController
  before_action :set_salslip, only: [:show, :edit, :update, :destroy]

  # GET /salslips
  # GET /salslips.json
  def index
    @salslips = Salslip.all
    @salslip = Salslip.new
  end

  # GET /salslips/1
  # GET /salslips/1.json
  def show
  end

  # GET /salslips/new
  def new
    @salslip = Salslip.new
  end

  # GET /salslips/1/edit
  def edit
  end

  # POST /salslips
  # POST /salslips.json
  def create
    @salslip = Salslip.new(salslip_params)

      if @salslip.save
        flash[:success] = "Salslip was successfully created."
        redirect_to action: "index"
      else
        render :new 
      end
  end

  # PATCH/PUT /salslips/1
  # PATCH/PUT /salslips/1.json
  def update
      if @salslip.update(salslip_params)
        flash[:success] = "Salslip was successfully updated."
        redirect_to action: "index"
      else
        render :edit 
      end
  end

  # DELETE /salslips/1
  # DELETE /salslips/1.json
  def destroy
    @salslip.destroy
    flash[:success] = "Salslip was successfully destroyed."
      redirect_to salslips_url 
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_salslip
      @salslip = Salslip.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def salslip_params
      params.require(:salslip).permit(:employee_id, :tax, :increment_id, :department_id, :designation_id, :basic_salary, :payment_by, :provident_fund, :Leave_deduction, :grand_total)
    end
end
