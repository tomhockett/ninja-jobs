class Job < ApplicationRecord
  validates :title, :company, :location, presence: true, length: { maximum: 50 }
  validates :description, presence: true, length: { maximum: 255 }
end
