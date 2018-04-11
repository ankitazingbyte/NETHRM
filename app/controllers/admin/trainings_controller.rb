class Admin::TrainingsController < ApplicationController
  before_action :set_training, only: [:show, :edit, :update, :destroy]

  # GET /trainings
  # GET /trainings.json
  def index
    @trainings = Training.all
     @training = Training.new
  end

  # GET /trainings/1
  # GET /trainings/1.json
  def show
  end

  # GET /trainings/new
  def new
    @training = Training.new
  end

  # GET /trainings/1/edit
  def edit
  end

  # POST /trainings
  # POST /trainings.json
  def create
    @training = Training.new(training_params)

      if @training.save
        redirect_to action: "index", notice: 'Training was successfully created.' 
      else
        render :new 
    end
  end

  # PATCH/PUT /trainings/1
  # PATCH/PUT /trainings/1.json
  def update
      if @training.update(training_params)
        redirect_to action: "index", notice: 'Training was successfully updated.'
      else
        render :edit 
    end
  end

  # DELETE /trainings/1
  # DELETE /trainings/1.json
  def destroy
    @training.destroy
      redirect_to trainings_url, notice: 'Training was successfully destroyed.' 
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_training
      @training = Training.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def training_params
      params.require(:training).permit(:employee_id, :training_from, :training_to, :location, :sponsored_by, :organized_by, :description, :training_type, :training_subject, :nature, :title, :trainer_id)
    end
end
