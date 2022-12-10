class Review < ApplicationRecord
  belongs_to :aircraft
  belongs_to :user

  validates :content, presence: true
end
