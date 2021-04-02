class RepliesMailbox < ApplicationMailbox

 
  
      def process
    
        # mail
        # mail.from
        # mail.subject
        # mail.decaded Text part of email
        return unless user.present?
       Comment.create(user: user, body: mail.decoded,ticket_id: 11)
      end

      def ticket 
        user.tickets.find ticket_id
      end
      
      def ticket_id
        var=11
      end
      
      def user
        @user ||= User.find_by email: mail.from
      end
      

 
end
