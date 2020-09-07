class Article < ApplicationRecord
  has_one_attached :photo
  has_rich_text :rich_body
  acts_as_taggable_on :categories

  validates :title, :photo, :rich_body, presence: true
end
