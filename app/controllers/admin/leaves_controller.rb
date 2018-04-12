class Admin::LeavesController < ApplicationController
  before_action :set_leave, only: [:show, :edit, :update, :destroy]

  # GET /leaves
  # GET /leaves.json
  def index
    @leaves = Leave.all
    @leave = Leave.new
  end

  # GET /leaves/1
  # GET /leaves/1.json
  def show
  end

  # GET /leaves/new
  def new
    @leave = Leave.new
  end

  # GET /leaves/1/edit
  def edit
  end

  # POST /leaves
  # POST /leaves.json
  def create
    @leave = Leave.new(leave_params)

      if @leave.save
        flash[:success] = "Leave was successfully created."
        redirect_to action: "index"
      else
        render :new 
      end
  end

  # PATCH/PUT /leaves/1
  # PATCH/PUT /leaves/1.json
  def update
      if @leave.update(leave_params)
        flash[:success] = "Leave was successfully updated."
        redirect_to action: "index" 
      else
        render :edit 
      end
  end

  # DELETE /leaves/1
  # DELETE /leaves/1.json
  def destroy
    @leave.destroy
    flash[:success] = "Leave was successfully destroyed."
      redirect_to action: "index"
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_leave
      @leave = Leave.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def leave_params
      params.require(:leave).permit(:employee_id, :leave_type, :leave_from, :leave_to, :status, :reason)
    end
end
