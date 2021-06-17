class Report < ApplicationRecord
  belongs_to :project
  belongs_to :user
  
  has_many_attached :files
  has_rich_text :description

  validates :title, :description, :files, presence: true

  def send_notification!
    users = ["werehenry2@gmail.com", "smugzie@gmail.com"]

    users.each do |user|
      ReportMailer.report_posted_notification(user, self).deliver_later
    end
  end
end
