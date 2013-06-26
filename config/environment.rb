# Load the Rails application.
require File.expand_path('../application', __FILE__)

PeoplePerson::Application.configure do
  config.action_mailer.delivery_method = :smtp
  config.action_mailer.smtp_settings = {
    :address              => 'smtp.gmail.com',
    :port                 => 587,
    :domain               => 'baci.lindsaar.net',
    :user_name            => 'chrisknight.mail@gmail.com',
    :password             => ENV["EMAIL_PASSWORD"],
    :authentication       => 'plain',
    :enable_starttls_auto => true  }
end

# Initialize the Rails application.
PeoplePerson::Application.initialize!


