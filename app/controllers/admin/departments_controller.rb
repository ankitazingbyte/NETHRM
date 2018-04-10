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
  def new
    @department = Department.new
  end

  # GET /departments/1/edit
  def edit
  end

  # POST /departments
  # POST /departments.json
  def create
    @department = Department.new(department_params)

<<<<<<< HEAD
    if @department.save
      flash[:success] = "Department successfully created"
      redirect_to action: "index", alert: @department.errors.full_messages
    else
      render :new 
    end
=======
      if @department.save
         redirect_to action: "index", notice: 'Department was successfully created.'
      else
        render :new
      end
>>>>>>> 68f4d19c3dfcfd10a5f5b068d94e9e072a19dfdb
  end

  def update
<<<<<<< HEAD
    if @department.update(department_params)
      flash[:success] = "Department successfully updated"
      redirect_to action: "index", alert: @department.errors.full_messages
    else
      render :edit
    end
=======
      if @department.update(department_params)
        redirect_to action: "index", notice: 'Department was successfully updated.' 
      else
        render :edit 
      end
>>>>>>> 68f4d19c3dfcfd10a5f5b068d94e9e072a19dfdb
  end

  def destroy
    @department.destroy
<<<<<<< HEAD
    flash[:success] = "Department successfully deleted"
    redirect_to departments_url
=======
      redirect_to departments_url, notice: 'Department was successfully destroyed.' 
>>>>>>> 68f4d19c3dfcfd10a5f5b068d94e9e072a19dfdb
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
