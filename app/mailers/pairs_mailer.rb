class PairsMailer < ActionMailer::Base
  default from: "chrisknight.mail@gmail.com"
  
  def notify(member, pairs)
    @member = member
    @pairs = pairs
    mail(:to => member.email, :subject => "Looks like you have a date ;)")
  end

end



# class UserMailer < ActionMailer::Base
#   default :from => "notifications@example.com"
 
#   def welcome_email(user)
#     @user = user
#     @url  = "http://example.com/login"
#     mail(:to => user.email, :subject => "Welcome to My Awesome Site")
#   end
# end