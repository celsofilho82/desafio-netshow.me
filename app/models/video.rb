class Video < ApplicationRecord
  belongs_to :user
  validates :title, :description, presence: true
  validates :url, presence: true, format: { with: /(http(s)?:\/\/|www\.).*(\.m3u8)/,
    message: " must contain extension .m3u8" }
  has_one_attached :video
end
