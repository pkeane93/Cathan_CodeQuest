class Post < ApplicationRecord
  belongs_to(:user)
  has_many(:categories)
  has_many(:blocks, dependent: :destroy)

  has_one_attached :image

  validates(:title, :subtitle, presence: true)
end
