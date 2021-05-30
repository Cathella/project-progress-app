class Project < ApplicationRecord
  has_many :reports
  belongs_to :user
  
  validates :name, presence: true
end
