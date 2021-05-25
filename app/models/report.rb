class Report < ApplicationRecord
  belongs_to :project
  has_many_attached :files
  validates :title, :description, :files, presence: true
end
