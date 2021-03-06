class Admin::TasksController < ApplicationController
  before_action :set_task, only: [:show, :edit, :update, :destroy]

  # GET /tasks
  # GET /tasks.json
  def index
    @tasks = Task.all
    @task = Task.new
  end

  # GET /tasks/1
  # GET /tasks/1.json
  def show
    @task_file = TaskFile.new
    @task_files = TaskFile.all
    @descussion = Descussion.new
    @descussions = Descussion.all
  end

  # GET /tasks/new
  def new
    @task = Task.new
  end

  # GET /tasks/1/edit
  def edit
  end

  # POST /tasks
  # POST /tasks.json
  def create
    @task = Task.new(task_params)

      if @task.save
        redirect_to action: "index", notice: 'Task was successfully created.'
      else
        render :new 
    end
  end

  # PATCH/PUT /tasks/1
  # PATCH/PUT /tasks/1.json
  def update
      if @task.update(task_params)
        redirect_to action: "index", notice: 'Task was successfully updated.' 
      else
        render :edit 
    end
  end

  # DELETE /tasks/1
  # DELETE /tasks/1.json
  def destroy
    @task.destroy
      redirect_to action: "index", notice: 'Task was successfully destroyed.' 
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_task
      @task = Task.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def task_params
      params.require(:task).permit(:attachment, :title, :employee_id, :start_date, :due_date, :estimated_hour, :progress, :status, :description)
    end
end
