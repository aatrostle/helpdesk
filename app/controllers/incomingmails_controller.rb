class IncomingmailsController < ApplicationController
  require 'mail'

  def update
    #yank out body from message
    body = params[:plain]

    #yank out ticket id from message_
    ticket_id = body.lines[0].chomp
    ticket = Ticket.find_by_id(ticket_id)

    if ticket
      ticket.update_attribute(response, message.body)
      render :text => 'success', :status => 200
    end
  end

end
