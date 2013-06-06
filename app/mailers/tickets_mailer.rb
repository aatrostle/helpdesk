class TicketsMailer < ActionMailer::Base
  default from: "from@example.com"

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
