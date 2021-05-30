class Report < ApplicationRecord
  belongs_to :project
  belongs_to :user
  
  has_many_attached :files
  has_rich_text :description

  validates :title, :description, :files, presence: true

  def send_notification!
    users = ["werehenry@gmail.com", "ncathie214@gmail.com"]

    users.each do |user|
      NotificationMailer.report_notification(user, self).deliver_later
    end
  end
end
