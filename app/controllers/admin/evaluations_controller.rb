class Admin::EvaluationsController < ApplicationController
  before_action :set_evaluation, only: [:show, :edit, :update, :destroy]

  # GET /evaluations
  # GET /evaluations.json
  def index
    @evaluations = Evaluation.all
    @evaluation = Evaluation.new
  end

  # GET /evaluations/1
  # GET /evaluations/1.json
  def show
  end

  # GET /evaluations/new
  def new
    @evaluation = Evaluation.new
  end

  # GET /evaluations/1/edit
  def edit
  end

  # POST /evaluations
  # POST /evaluations.json
  def create
    @evaluation = Evaluation.new(evaluation_params)

      if @evaluation.save
        redirect_to action: "index", notice: 'Evaluation was successfully created.' 
      else
        @evaluations = Evaluation.all

      render :new, locals: {evaluation: @evaluation, evaluations: @evaluations } 
    end
  end

  # PATCH/PUT /evaluations/1
  # PATCH/PUT /evaluations/1.json
  def update
      if @evaluation.update(evaluation_params)
        redirect_to action: "index", notice: 'Evaluation was successfully updated.' 
      else
        render :edit 
    end
  end

  # DELETE /evaluations/1
  # DELETE /evaluations/1.json
  def destroy
    @evaluation.destroy
      redirect_to action: "index", notice: 'Evaluation was successfully destroyed.' 
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_evaluation
      @evaluation = Evaluation.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def evaluation_params
      params.require(:evaluation).permit(:title, :description)
    end
end
