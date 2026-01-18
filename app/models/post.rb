class Post < ApplicationRecord
  belongs_to(:user)
  has_many(:categories)

  validates(:title, :subtitle, presence: true)
end
