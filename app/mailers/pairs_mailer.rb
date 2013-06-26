class PairsMailer < ActionMailer::Base
  default from: "chrisknight.mail@gmail.com"
  
  def notify(member, pairs)
    @member = member
    @pairs = pairs
    mail(:to => member.email, :subject => "Looks like you have a date ;)")
  end
end