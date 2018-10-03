class Review < ApplicationRecord
  belongs_to :movie
  belongs_to :user
  validates :body, presence: true
end
