class User < ApplicationRecord
  has_many :posts

  with_options presence: true, uniqueness: true do
    validates :email
    validates :uid
  end
end
