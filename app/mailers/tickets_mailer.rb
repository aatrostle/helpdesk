class TicketsMailer < ActionMailer::Base
  # default from: "7e5e78bf4082256510e1@cloudmailin.net"
  default from: ENV["CLOUDMAILIN_FORWARD_ADDRESS"]
  # Subject can be set in your I18n file at config/locales/en.yml
  # with the following lookup:
  #
  #   en.tickets_mailer.new_ticket.subject
  #
  def new_ticket(ticket)
    @ticket = ticket

    mail to: ticket.email, subject: "Ticket <#{ticket.id}> Created!"
  end
end
