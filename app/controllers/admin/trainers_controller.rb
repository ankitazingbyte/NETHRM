class Admin::TrainersController < ApplicationController
  before_action :set_trainer, only: [:show, :edit, :update, :destroy]

  # GET /trainers
  # GET /trainers.json
  def index
    @trainers = Trainer.all
    @trainer = Trainer.new
  end

  # GET /trainers/1
  # GET /trainers/1.json
  def show
  end

  # GET /trainers/new
  def new
    @trainer = Trainer.new
  end

  # GET /trainers/1/edit
  def edit
  end

  # POST /trainers
  # POST /trainers.json
  def create
    @trainer = Trainer.new(trainer_params)

      if @trainer.save
        redirect_to action: "index", notice: 'Trainer was successfully created.' 
      else
        render :new 
    end
  end

  # PATCH/PUT /trainers/1
  # PATCH/PUT /trainers/1.json
  def update
      if @trainer.update(trainer_params)
        redirect_to action: "index", notice: 'Trainer was successfully updated.' 
      else
        render :edit 
    end
  end

  # DELETE /trainers/1
  # DELETE /trainers/1.json
  def destroy
    @trainer.destroy
      redirect_to action: "index", notice: 'Trainer was successfully destroyed.'
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_trainer
      @trainer = Trainer.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def trainer_params
      params.require(:trainer).permit(:first_name, :lastname, :designation, :organization, :address, :city, :state, :zip_code, :country, :email, :phone, :trainer_expertise)
    end
end
