class Article < ApplicationRecord
  has_one_attached :photo
  has_many_attached :article_photos
  has_rich_text :rich_body

  validates :title, :photo, :rich_body, presence: true
end
