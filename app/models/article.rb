class Article < ApplicationRecord
    validates :body, presence: true, length: { maximum: 500,
        too_long: '500 characters in post is the maximum allowed.' }
    validates :title, presence: true, length: { maximum: 100 }
    validates :image, presence: true
    validates :category_id, presence: true

    belongs_to :user
    belongs_to :category
    has_many :votes, dependent: :destroy
    scope :most_recent, -> { order(created_at: :desc) }
    has_one_attached :image
end
