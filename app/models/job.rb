class Job < ApplicationRecord
  validates :title, :company, :location, :description, presence: true
end
