if Rails.env.development?
  # use mailcatcher in development (http://mailcatcher.me/)
  ActionMailer::Base.smtp_settings = {
    :address => '127.0.0.1',
    :port => 1025
  }
else
  ActionMailer::Base.smtp_settings = {
    :user_name => ENV['SENDGRID_USERNAME'],
    :password => ENV['SENDGRID_PASSWORD'],
    :domain => 'danredmond.me',
    :address => 'smtp.sendgrid.net',
    :port => 587,
    :authentication => :plain,
    :enable_starttls_auto => true
  }
end