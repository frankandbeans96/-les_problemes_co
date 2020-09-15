class Article < ApplicationRecord
  searchkick
  has_one_attached :photo
  has_many :comments
  has_rich_text :rich_body
  acts_as_taggable_on :categories

  validates :title, :photo, :rich_body, presence: true

  def search_data
    {
      title: title,
      foreword: foreword,
      body: rich_body.body,
      category: category_list
    }
  end

  def next
    Article.where("id > ?", id).first
  end

  def prev
    Article.where("id < ?", id).last
  end
end
