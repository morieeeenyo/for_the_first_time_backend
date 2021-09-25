class Post < ApplicationRecord
  enum genre_id: {unselected: 0, excercise: 1, nature: 2, study: 3, reading: 4, trip: 5}, _prefix: true

  validates :content, presence: true
  validates :genreId, numericality: { other_than: 0 }

end
