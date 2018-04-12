class Admin::EmployeesController < ApplicationController
  before_action :set_employee, only: [:show, :edit, :update, :destroy]

  # GET /employees
  # GET /employees.json
  def index
    @employees = Employee.all
  end

  # GET /employees/1
  # GET /employees/1.json
  def show
  end

  # GET /employees/new
  def new
    @employee = Employee.new
    @user = User.new
  end

  # GET /employees/1/edit
  def edit
    @banks = Bank.all
    @bank = Bank.new
    @documents = Document.all
    @document = Document.new
  end

  # POST /employees
  # POST /employees.json
  def create
    @employee = Employee.new(employee_params)
    
      if @employee.save
        flash[:success] = "Employee successfully created"
        redirect_to action: "index"
      else
        render 'new'
      end
  end

  # PATCH/PUT /employees/1
  # PATCH/PUT /employees/1.json
  def update
      if @employee.update(employee_params)
        flash[:success] = "Employee successfully updated"
        redirect_to action: "index"
      else
        render 'edit'
      end
  end

  # DELETE /employees/1
  # DELETE /employees/1.json
  def destroy
    @employee.destroy
    flash[:success] = "Employee successfully deleted"
      redirect_to action: "index"
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_employee
      @employee = Employee.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def employee_params
      params.require(:employee).permit(:first_name, :image, :first_name, :last_name, :mother, :father, :employee_code, :user_name, :date_of_join, :date_of_leave, :date_of_birth, :phone, :alternative_phone, :status, :present_address, :permanent_address, :department_id, :designation_id, :gender, :tax_example, user_attributes: [:email, :password, :password_confirmation])
    end
end
