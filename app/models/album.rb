class Album < ApplicationRecord
  has_one_attached :cover
  has_rich_text :summary
  validates :title, presence: true
  validates :artist, presence: true
  has_many :listens, dependent: :destroy
  has_many :likes, dependent: :destroy
end
