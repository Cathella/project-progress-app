class Project < ApplicationRecord
  has_many :reports, dependent: :destroy
  belongs_to :user
  
  validates :name, presence: true
end
