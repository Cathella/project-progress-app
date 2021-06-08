class NotificationMailerPreview < ActionMailer::Preview
  def report_posted_notification
    NotificationMailer.report_posted_notification(User.first, Report.first).deliver_now
  end
end