class Booking < ApplicationRecord
  validates :start_date, presence: true, comparison: { less_than_or_equal_to: :end_date }
  validates :end_date, presence: true

  belongs_to :aircraft
  belongs_to :user
end
