class Category < ApplicationRecord
  belongs_to(:post)

  validates(:name, presence: true)
end
