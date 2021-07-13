class Category < ApplicationRecord
  has_many :articles
  validates :name, presence: true, length: { minimum: 3 }
end
