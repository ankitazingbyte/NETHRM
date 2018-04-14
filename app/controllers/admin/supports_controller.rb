class Admin::SupportsController < ApplicationController
  before_action :set_support, only: [:show, :edit, :update, :destroy]

  # GET /supports
  # GET /supports.json
  def index
    @supports = Support.all
    @support = Support.new
  end

  # GET /supports/1
  # GET /supports/1.json
  def show
  end

  # GET /supports/new
  def new
    @support = Support.new
  end

  # GET /supports/1/edit
  def edit
  end

  # POST /supports
  # POST /supports.json
  def create
    @support = Support.new(support_params)

      if @support.save
        redirect_to action: "index", notice: 'Support was successfully created.' 
      else
        render :new 
      end
  end

  # PATCH/PUT /supports/1
  # PATCH/PUT /supports/1.json
  def update
      if @support.update(support_params)
        redirect_to action: "index", notice: 'Support was successfully updated.' 
      else
        render :edit 
      end
  end

  # DELETE /supports/1
  # DELETE /supports/1.json
  def destroy
    @support.destroy
      redirect_to action: "index", notice: 'Support was successfully destroyed.'
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_support
      @support = Support.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def support_params
      params.require(:support).permit(:name, :email, :show_in_client)
    end
end
