require "sendgrid-ruby"

SendGrid.configure do |config|
  config.api_key = ENV["SENDGRID_API_KEY"] # Use an environment variable to store your API key securely
end
