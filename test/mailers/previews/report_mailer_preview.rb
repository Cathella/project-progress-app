# Preview all emails at http://localhost:3000/rails/mailers/report_mailer
class ReportMailerPreview < ActionMailer::Preview

  # Preview this email at http://localhost:3000/rails/mailers/report_mailer/report_posted_notification
  def report_posted_notification
    ReportMailer.report_posted_notification(User.first, Report.first).deliver_now
  end

end
