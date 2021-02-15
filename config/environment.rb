# Load the Rails application.
require_relative "application"

# Initialize the Rails application.
Rails.application.initialize!
ActionMailer::Base.smtp_settings = {
    :user_name => 'miapikey',
    :password => ENV["RAILS_INBOUND_EMAIL_PASSWORD"],
    :domain => 'jorgealmacen.cu.ma',
    :address => 'smtp.sendgrid.net',
    :port => 587,
    :authentication => :plain,
    :enable_starttls_auto => true
  }