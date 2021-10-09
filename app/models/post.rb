class Post < ApplicationRecord
  extend ActiveHash::Associations::ActiveRecordExtensions
  belongs_to_active_hash :genre
  belongs_to :user

  validates :content, presence: true
  validates :genre_id, numericality: { other_than: 0 }

end
