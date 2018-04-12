class Admin::DesignationsController < ApplicationController
  before_action :set_designation, only: [:show, :edit, :update, :destroy]

  # GET /designations
  # GET /designations.json
  def index
    @designations = Designation.all
    @designation = Designation.new
  end

  # GET /designations/1
  # GET /designations/1.json
  def show
  end

  # GET /designations/new
  def new
    @designation = Designation.new
  end

  # GET /designations/1/edit
  def edit
  end

  # POST /designations
  # POST /designations.json
  def create
    @designation = Designation.new(designation_params)

    if @designation.save
      flash[:success] = "Designation successfully created"
      redirect_to action: "index"
    else
       render 'new' 
    end
  end

  def update
    if @designation.update(designation_params)
      flash[:success] = "Designation successfully updated"
      redirect_to action: "index"
    else
      render 'edit'
    end
  end

  def destroy
    @designation.destroy
    flash[:success] = "Designation successfully deleted"
    redirect_to action: "index"
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_designation
      @designation = Designation.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def designation_params
      params.require(:designation).permit(:name, :department_id)
    end
end
