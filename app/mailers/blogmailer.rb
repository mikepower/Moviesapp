class Blogmailer < ActionMailer::Base

   def register(user) 
    @user = user 
    mail(:to => user.email, :subject => "Welcome to the movie blog site") 
 end
end
