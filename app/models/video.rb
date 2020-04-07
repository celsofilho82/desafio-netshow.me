class Video < ApplicationRecord
  belongs_to :user
  validates :description, :url, presence: true
  has_one_attached :video
end
