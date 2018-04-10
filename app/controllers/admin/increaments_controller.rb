class Admin::IncreamentsController < ApplicationController
  before_action :set_increament, only: [:show, :edit, :update, :destroy]

  # GET /increaments
  # GET /increaments.json
  def index
    @increaments = Increament.all
    @increament = Increament.new
  end

  # GET /increaments/1
  # GET /increaments/1.json
  def show
  end

  # GET /increaments/new
  def new
    @increament = Increament.new
  end

  # GET /increaments/1/edit
  def edit
  end

  # POST /increaments
  # POST /increaments.json
  def create
    @increament = Increament.new(increament_params)

      if @increament.save
        flash[:success] = "Increament successfully created"
        redirect_to action: "index"
      else
        render :new 
      end
  end

  # PATCH/PUT /increaments/1
  # PATCH/PUT /increaments/1.json
  def update
      if @increament.update(increament_params)
        flash[:success] = "Increament successfully updated"
        redirect_to action: "index" 
      else
        render :edit 
      end
  end

  # DELETE /increaments/1
  # DELETE /increaments/1.json
  def destroy
    @increament.destroy
    flash[:success] = "Increament successfully deleted"
      redirect_to increaments_url 
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_increament
      @increament = Increament.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def increament_params
      params.require(:increament).permit(:employee_id, :designation_id, :current_salary, :increament_salary)
    end
end
