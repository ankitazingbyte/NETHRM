class Admin::TicketsController < ApplicationController
  before_action :set_ticket, only: [:show, :edit, :update, :destroy]

  # GET /tickets
  # GET /tickets.json
  def index
    @tickets = Ticket.all
  end

  # GET /tickets/1
  # GET /tickets/1.json
  def show
  end

  # GET /tickets/new
  def new
    @ticket = Ticket.new
  end

  # GET /tickets/1/edit
  def edit
  end

  # POST /tickets
  # POST /tickets.json
  def create
    @ticket = Ticket.new(ticket_params)

      if @ticket.save
         redirect_to action: "index", notice: 'Ticket was successfully created.' 
      else
        render :new 
    end
  end

  # PATCH/PUT /tickets/1
  # PATCH/PUT /tickets/1.json
  def update
      if @ticket.update(ticket_params)
        redirect_to action: "index", notice: 'Ticket was successfully updated.' 
      else
        render :edit 
    end
  end

  # DELETE /tickets/1
  # DELETE /tickets/1.json
  def destroy
    @ticket.destroy
      redirect_to action: "index", notice: 'Ticket was successfully destroyed.'
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_ticket
      @ticket = Ticket.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def ticket_params
      params.require(:ticket).permit(:employee_id, :department_id, :subject, :message, :status)
    end
end
