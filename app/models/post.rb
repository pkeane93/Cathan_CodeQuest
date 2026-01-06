class Post < ApplicationRecord
  belongs_to(:user)
  has_many(:post)

  validates(:title, :content, presence: true)
end
