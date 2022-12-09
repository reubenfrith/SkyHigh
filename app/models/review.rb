class Review < ApplicationRecord
  belongs_to :aircraft

  validates :content, presence: true
end
