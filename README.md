![Alt Text](path/to/resource.png)

## Helpdesk

Helpdesk showcases sending and receiving email functionality by using Heroku, the Sendgrid addon, and the Cloudmailin addon.

## Setup

The admin email is set inside tickets_mailer.rb

When a user creates a new ticket the ticket information is sent to the admin.

The admin should reply with the ticket's id in the first line of the email and response below that.  Cloudmailin will then send a post request to rails which will update the response attribute of the ticket.