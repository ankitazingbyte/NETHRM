class DescussionsController < ApplicationController
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

    respond_to do |format|
      if @descussion.save
        format.html { redirect_to @descussion, notice: 'Descussion was successfully created.' }
        format.json { render :show, status: :created, location: @descussion }
      else
        format.html { render :new }
        format.json { render json: @descussion.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /descussions/1
  # PATCH/PUT /descussions/1.json
  def update
    respond_to do |format|
      if @descussion.update(descussion_params)
        format.html { redirect_to @descussion, notice: 'Descussion was successfully updated.' }
        format.json { render :show, status: :ok, location: @descussion }
      else
        format.html { render :edit }
        format.json { render json: @descussion.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /descussions/1
  # DELETE /descussions/1.json
  def destroy
    @descussion.destroy
    respond_to do |format|
      format.html { redirect_to descussions_url, notice: 'Descussion was successfully destroyed.' }
      format.json { head :no_content }
    end
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
