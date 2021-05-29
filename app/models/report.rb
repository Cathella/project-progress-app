class Report < ApplicationRecord
  belongs_to :project
  has_many_attached :files
  validates :title, :description, :files, presence: true

  # users


  def send_notification!
    users = ["werehenry@gmail.com", "ncathie214@gmail.com"]

    users.each do |user|
      NotificationMailer.report_notification(user, self).deliver_later
    end
  end
end
