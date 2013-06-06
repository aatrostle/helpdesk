class IncomingmailsController < ApplicationController
  require 'mail'

  def update
    #Search
    body = params[:message][:body]

    #yank out body from message
    ticket_id = message.lines[0].chomp
    #yank out ticket id from message_


    ticket = Ticket.find_by_id(ticket_id)
    if ticket
      ticket.update_attribute(response, body)
      render :text => 'success', :status => 200
    end
  end

end
