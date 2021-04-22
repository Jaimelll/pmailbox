class SupportMailbox < ApplicationMailbox

  def process
    # mail
    # mail.from
    # mail.subject
    # mail.decoded Text part of the email

    return unless user.present?

    if mail.parts.present?
      Ticket.create(user: user, title: mail.subject, body: mail.parts[0].body.decoded)
    else
      Ticket.create(user: user, title: mail.subject, body: mail.decoded)
    end

   # Ticket.create(user: user, title: mail.subject, body: mail.decoded)
   #  Ticket.create(user: user, title: mail.subject, body: mail.body.decoded)
    AnswerMailer.notify(user).deliver
  end

  def user
    @user ||= User.find_by email: mail.from
  end

   
end
