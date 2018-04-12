class Admin::TrainingEventsController < ApplicationController
  before_action :set_training_event, only: [:show, :edit, :update, :destroy]

  # GET /training_events
  # GET /training_events.json
  def index
    @training_events = TrainingEvent.all
    @training_event = TrainingEvent.new
  end

  # GET /training_events/1
  # GET /training_events/1.json
  def show
  end

  # GET /training_events/new
  def new
    @training_event = TrainingEvent.new
  end

  # GET /training_events/1/edit
  def edit
  end

  # POST /training_events
  # POST /training_events.json
  def create
    @training_event = TrainingEvent.new(training_event_params)

      if @training_event.save
        redirect_to action: "index", notice: 'Training event was successfully created.' 
      else
        render :new 
    end
  end

  # PATCH/PUT /training_events/1
  # PATCH/PUT /training_events/1.json
  def update
      if @training_event.update(training_event_params)
        redirect_to action: "index", notice: 'Training event was successfully updated.' 
      else
        render :edit 
    end
  end

  # DELETE /training_events/1
  # DELETE /training_events/1.json
  def destroy
    @training_event.destroy
      redirect_to action: "index", notice: 'Training event was successfully destroyed.' 
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_training_event
      @training_event = TrainingEvent.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def training_event_params
      params.require(:training_event).permit(:training_type, :subject, :nature_of_training, :title, :location, :sponsored_by, :organized_by, :training_from, :training_to, :employee_id, :trainer_id, :status)
    end
end
