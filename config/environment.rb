# Load the Rails application.
require File.expand_path('../application', __FILE__)

PeoplePerson::Application.configure do
  
  ActionMailer::Base.smtp_settings = {
  :user_name => ‘gschool’,
  :password => ENV["EMAIL_PASSWORD"]
  :domain => "http://people-person.herokuapp.com",
  :address => ‘smtp.sendgrid.net’,
  :port => 587,
  :authentication => :plain,
  :enable_starttls_auto => true
}


end

# Initialize the Rails application.
PeoplePerson::Application.initialize!


