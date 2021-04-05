class AnswerMailer < ApplicationMailer
  
 def notify(user)
   @user=user
   mail(to: @user.email, subject:'respuesta mailbox')
 end

end
