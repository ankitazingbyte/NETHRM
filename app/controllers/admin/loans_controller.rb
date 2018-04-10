class Admin::LoansController < ApplicationController
  before_action :set_loan, only: [:show, :edit, :update, :destroy]

  # GET /loans
  # GET /loans.json
  def index
    @loans = Loan.all
    @loan = Loan.new
  end

  # GET /loans/1
  # GET /loans/1.json
  def show
  end

  # GET /loans/new
  def new
    @loan = Loan.new
  end

  # GET /loans/1/edit
  def edit
  end

  # POST /loans
  # POST /loans.json
  def create
    @loan = Loan.new(loan_params)

      if @loan.save
        flash[:success] = "Loan was successfully created."
        redirect_to action: "index"
      else
        render :new 
      end
  end

  # PATCH/PUT /loans/1
  # PATCH/PUT /loans/1.json
  def update
      if @loan.update(loan_params)
        flash[:success] = "Loan was successfully updated."
        redirect_to action: "index"
      else
        render :edit 
      end
  end

  # DELETE /loans/1
  # DELETE /loans/1.json
  def destroy
    @loan.destroy
    flash[:success] = "Loan was successfully destroyed."
      redirect_to loans_url 
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_loan
      @loan = Loan.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def loan_params
      params.require(:loan).permit(:employee_id, :title, :loan_date, :loan_amount, :monthly_payement, :repayment_start_date, :status, :description)
    end
end
