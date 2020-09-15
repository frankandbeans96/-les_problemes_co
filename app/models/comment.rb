class Comment < ApplicationRecord
  belongs_to :article

  validates :comment, :name, presence: true
end
