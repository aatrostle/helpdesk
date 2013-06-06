class IncomingmailsController < ApplicationController
  require 'mail'

  def update
    #yank out body from message
    body = params[:plain]

    Rails.logger.log Logger::INFO, params
    Rails.logger.log Logger::INFO, body.class
    Rails.logger.log Logger::INFO, body.methods
    Rails.logger.log Logger::INFO, body


    #yank out ticket id from message_
    ticket_id = body.lines.first.chomp
    ticket = Ticket.find_by_id(ticket_id)

    if ticket
      ticket.update_attribute(:response, body)
      render :text => 'success', :status => 200
    end
  end

end
