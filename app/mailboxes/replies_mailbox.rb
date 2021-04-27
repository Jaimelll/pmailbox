class RepliesMailbox < ApplicationMailbox

 MATCHER = /replies+(.+)@parse.jcontador.tk/i
  
# MATCHER = /info@parse.jcontador.tk/i

  def process
  # mail
  # mail.from
  # mail.subject
  # mail.decaded Text part of email
  return unless user.present?

    

      if mail.parts.present?
        ticket.comments.create(user: user, body: mail.parts[0].body.decoded)
        
      else
        ticket.comments.create(user: user, body: mail.decoded)
      end

  
  end

      def ticket 
        user.tickets.find ticket_id
      end
      
      def ticket_id
        recipient = mail.recipients.find {|r| MATCHER.match?(r)}
        recipient[MATCHER,1]
      end
      
      def user
        @user ||= User.find_by email: mail.from
      end
      
      

 
end
