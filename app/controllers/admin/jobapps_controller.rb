class Admin::JobappsController < ApplicationController
  before_action :set_jobapp, only: [:show, :edit, :update, :destroy]

  # GET /jobapps
  # GET /jobapps.json
  def index
    @jobapps = Jobapp.all
    @jobapp = Jobapp.new
  end

  # GET /jobapps/1
  # GET /jobapps/1.json
  def show
  end

  # GET /jobapps/new
  def new
    @jobapp = Jobapp.new
  end

  # GET /jobapps/1/edit
  def edit
  end

  # POST /jobapps
  # POST /jobapps.json
  def create
    @jobapp = Jobapp.new(jobapp_params)

      if @jobapp.save
        flash[:success] = "Jobapp was successfully created."
        redirect_to action: "index"
      else
        @jobapps = Jobapp.all

      render :new, locals: {jobapp: @jobapp,jobapps: @jobapps}
      end
  end

  # PATCH/PUT /jobapps/1
  # PATCH/PUT /jobapps/1.json
  def update
      if @jobapp.update(jobapp_params)
        flash[:success] = "Jobapp was successfully updated."
        redirect_to action: "index"
      else
        render "edit" 
      end
  end

  # DELETE /jobapps/1
  # DELETE /jobapps/1.json
  def destroy
    @jobapp.destroy
    flash[:success] = "Jobapp was successfully destroyed"
      redirect_to action: "index"
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_jobapp
      @jobapp = Jobapp.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def jobapp_params
      params.require(:jobapp).permit(:designation_id, :number_of_post, :job_type, :experience, :age, :job_location, :salary, :post_date, :last_date_to_apply, :close_date, :status, :short_description, :description)
    end
end
