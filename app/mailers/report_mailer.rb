class ReportMailer < ApplicationMailer

  def report_posted_notification(user, report)
    @report = report
    @greeting = "Hi, Ms. Mugala Sheila,"

    mail to: user, subject: "Project Update: New Project Progress Report"
  end
end
