class Report < ApplicationRecord
  belongs_to :project
  has_many_attached :files
end
