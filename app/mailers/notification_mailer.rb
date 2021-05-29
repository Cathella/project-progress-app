class NotificationMailer < ApplicationMailer
  default from: "notifications@example.com"

  def report_notification(user, report)
    @report = report
    mail(
      to: "#{user}",
      subject: "New project report added by Were Henry"
    )
  end
end