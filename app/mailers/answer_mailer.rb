class AnswerMailer < ApplicationMailer
  
 def notify(user)
   @user=user
   mail(to: @user.email, subject:'respuesta a envio')
 end

end
