class AnswerMailer < ApplicationMailer
  
 def notify(user,mmail)
   @user=user
   @mmail=mmail
   mail(to: @user.email, subject: 'RE:'+@mmail.subject)
 end

end
 