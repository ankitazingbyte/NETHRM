class Admin::AssesmentsController < ApplicationController
  before_action :set_assesment, only: [:show, :edit, :update, :destroy]

  # GET /assesments
  # GET /assesments.json
  def index
    @assesments = Assesment.all
    @assesment = Assesment.new
  end

  # GET /assesments/1
  # GET /assesments/1.json
  def show
  end

  # GET /assesments/new
  def new
    @assesment = Assesment.new
  end

  # GET /assesments/1/edit
  def edit
  end

  # POST /assesments
  # POST /assesments.json
  def create
    @assesment = Assesment.new(assesment_params)

      if @assesment.save
        redirect_to action: "index", notice: 'Assesment was successfully created.' 
      else
        render :new 
    end
  end

  # PATCH/PUT /assesments/1
  # PATCH/PUT /assesments/1.json
  def update
      if @assesment.update(assesment_params)
        redirect_to action: "index", notice: 'Assesment was successfully updated.' 
      else
        render :edit 
    end
  end

  # DELETE /assesments/1
  # DELETE /assesments/1.json
  def destroy
    @assesment.destroy
      redirect_to action: "index", notice: 'Assesment was successfully destroyed.' 
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_assesment
      @assesment = Assesment.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def assesment_params
      params.require(:assesment).permit(:department_id, :training_type, :training_subject, :nature_of_training, :training_title, :employee_id, :training_reason, :trainer_id, :location, :start_date, :end_date, :training_cost, :travel_cost, :status, :description)
    end
end
