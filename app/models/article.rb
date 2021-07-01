class Article < ApplicationRecord
    validates :body, presence: true, length: { maximum: 500,
        too_long: '500 characters in post is the maximum allowed.' }
    validates :title, presence: true, length: { maximum: 100 }

    belongs_to :user
    belongs_to :category
    has_many :votes, dependent: :destroy
    scope :most_recent, -> { order(created_at: :desc) }
end
