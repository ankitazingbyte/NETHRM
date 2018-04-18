class Admin::DescussionsController < ApplicationController
  before_action :set_descussion, only: [:show, :edit, :update, :destroy]

  # GET /descussions
  # GET /descussions.json
  def index
    @descussions = Descussion.all
  end

  # GET /descussions/1
  # GET /descussions/1.json
  def show
  end

  # GET /descussions/new
  def new
    @descussion = Descussion.new
  end

  # GET /descussions/1/edit
  def edit
  end

  # POST /descussions
  # POST /descussions.json
  def create
    @descussion = Descussion.new(descussion_params)
      if @descussion.save
         redirect_to action: "index", notice: 'Descussion was successfully created.'
      else
         render :new 
      end
  end

  # PATCH/PUT /descussions/1
  # PATCH/PUT /descussions/1.json
  def update
      if @descussion.update(descussion_params)
        redirect_to @descussion, notice: 'Descussion was successfully updated.' 
      else
        render :edit 
      end
  end

  # DELETE /descussions/1
  # DELETE /descussions/1.json
  def destroy
    @descussion.destroy
      redirect_to descussions_url, notice: 'Descussion was successfully destroyed.' 
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_descussion
      @descussion = Descussion.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def descussion_params
      params.require(:descussion).permit(:comment, :employee_id)
    end
end
