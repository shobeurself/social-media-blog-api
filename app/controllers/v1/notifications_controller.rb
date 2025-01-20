class V1::NotificationsController < ApplicationController
  skip_before_action :authenticate_request

  def send_email
    ApplicationMailer.sendgrid_email(
      to: "kyleshobe@gmail.com",
      subject: "Hello from SendGrid!",
      content: "<h1>This is a test email</h1>"
    ).deliver_now
  end
end
