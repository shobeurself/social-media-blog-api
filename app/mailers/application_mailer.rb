class ApplicationMailer < ActionMailer::Base
  default from: "kyle@mundoprofundo.org"
  layout "mailer"

  def sendgrid_email(to:, subject:, content:)
    mail(
      to: to,
      subject: subject,
      body: content,
      content_type: "text/html"
    )
  end
end
