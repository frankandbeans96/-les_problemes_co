class Contact < ApplicationRecord
  validates :email, :message, :name, presence: true
end
