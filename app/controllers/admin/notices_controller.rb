class Admin::NoticesController < ApplicationController
  before_action :set_notice, only: [:show, :edit, :update, :destroy]

  # GET /notices
  # GET /notices.json
  def index
    @notices = Notice.all
    @notice = Notice.new
  end

  # GET /notices/1
  # GET /notices/1.json
  def show
  end

  # GET /notices/new
  def new
    @notice = Notice.new
  end

  # GET /notices/1/edit
  def edit
  end

  # POST /notices
  # POST /notices.json
  def create
    @notice = Notice.new(notice_params)

      if @notice.save
        flash[:success] = "Notice was successfully created."
        redirect_to action: "index" 
      else
        render :new 
      end
  end

  # PATCH/PUT /notices/1
  # PATCH/PUT /notices/1.json
  def update
      if @notice.update(notice_params)
        flash[:success] = "Notice was successfully updated."
        redirect_to action: "index"
      else
        render :edit 
      end
  end

  # DELETE /notices/1
  # DELETE /notices/1.json
  def destroy
    @notice.destroy
    flash[:success] = "Notice was successfully destroyed."
      redirect_to notices_url 
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_notice
      @notice = Notice.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def notice_params
      params.require(:notice).permit(:title, :status, :description)
    end
end
