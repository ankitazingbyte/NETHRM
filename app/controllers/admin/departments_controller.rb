class Admin::DepartmentsController < ApplicationController
  before_action :set_department, only: [:show, :edit, :update, :destroy]

  # GET /departments
  # GET /departments.json
  def index
    @departments = Department.all
    @department = Department.new
  end

  # GET /departments/1
  # GET /departments/1.json
  def show
  end

  # GET /departments/new
  # def new
  #   @department = Department.new
  # end

  # GET /departments/1/edit
  def edit
  end

  # POST /departments
  # POST /departments.json
  def create
    @department = Department.new(department_params)

    if @department.save
      flash[:success] = "Department successfully created"
      redirect_to action: "index", alert: @department.errors.full_messages
    else
          @departments = Department.all

      render :new, locals: {department: @department,departments: @departments } 
    end
  end

  def update
    if @department.update(department_params)
      flash[:success] = "Department successfully updated"
      redirect_to action: "index", alert: @department.errors.full_messages
    else
      render :edit
    end
  end

  def destroy
    @department.destroy
    flash[:success] = "Department successfully deleted"
    redirect_to action: "index"
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_department
      @department = Department.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def department_params
      params.require(:department).permit(:name)
    end
end
