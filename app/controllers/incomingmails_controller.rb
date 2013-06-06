class IncomingmailsController < ApplicationController
  require 'mail'

  def update
    #Search
    message = Mail.new(params[:message])

    #yank out body from message
    ticket_id = message.body.lines[0].chomp
    #yank out ticket id from message_


    ticket = Ticket.find_by_id(ticket_id)
    if ticket
      ticket.update_attribute(response, message.body)
      render :text => 'success', :status => 200
    end
  end

end
