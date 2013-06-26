# Load the Rails application.
require File.expand_path('../application', __FILE__)

PeoplePerson::Application.configure do
  
  ActionMailer::Base.smtp_settings = {
  :user_name  => ENV['SENDGRID_USERNAME'],
  :password   => ENV['SENDGRID_PASSWORD'],
  :domain => "http://people-person.herokuapp.com",
  :address => "smtp.sendgrid.net",
  :port => 587,
  :authentication => :plain,
  :enable_starttls_auto => true
}


end

# Initialize the Rails application.
PeoplePerson::Application.initialize!


