class TicketsController < ApplicationController
  def index
    #get all tickets
    @tickets = Ticket.all
  end

  def new
    #create new ticket
    @ticket = Ticket.new
  end

  def create
    #find ticket
    @ticket = Ticket.new(params[:ticket])

    if @ticket.save
      TicketsMailer.new_ticket(@ticket).deliver
      flash[:notice] = "Email sent to helpdesk"
      redirect_to tickets_path
    else
      flash[:alert] = "Invalid Ticket"
      render new
    end
  end

  def update
  end
end
