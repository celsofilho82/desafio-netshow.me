class Video < ApplicationRecord
  belongs_to :user
  validates :title, :description, :url, presence: true
  has_one_attached :video
end
