class TicketsMailer < ActionMailer::Base
  default from: "7e5e78bf4082256510e1@cloudmailin.net"

  # Subject can be set in your I18n file at config/locales/en.yml
  # with the following lookup:
  #
  #   en.tickets_mailer.new_ticket.subject
  #
  def new_ticket(ticket)
    @ticket = ticket

    mail to: "sean.t.irby@gmail.com"
  end
end
