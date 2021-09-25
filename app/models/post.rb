class Post < ApplicationRecord
  extend ActiveHash::Associations::ActiveRecordExtensions
  belongs_to_active_hash :genre

  validates :content, presence: true
  validates :user_token, presence: true
  validates :genre_id, numericality: { other_than: 0 }

end
