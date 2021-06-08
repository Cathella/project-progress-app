require "test_helper"

class ReportMailerTest < ActionMailer::TestCase
  test "report_posted_notification" do
    mail = ReportMailer.report_posted_notification
    assert_equal "Report posted notification", mail.subject
    assert_equal ["to@example.org"], mail.to
    assert_equal ["from@example.com"], mail.from
    assert_match "Hi", mail.body.encoded
  end

end
