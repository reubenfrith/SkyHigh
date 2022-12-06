class Booking < ApplicationRecord
  validates :start_date, presence: true, comparison: { less_than_or_equal_to: :end_date }
  validates :end_date, presence: true
  validate :start_date_cannot_be_in_the_past, :bookings_must_not_overlap

  belongs_to :aircraft
  belongs_to :user

  def start_date_cannot_be_in_the_past
    if (start_date.present? && start_date < Date.today)
      errors.add(:start_date, "can't be in the past")
    end
  end

  def bookings_must_not_overlap
    return if self
                .class
                .where.not(id: id)
                .where(aircraft_id: aircraft_id)
                .where('start_date < ? AND end_date > ?', end_date, start_date)
                .none?

    errors.add(:start_date, 'Overlapping reservation exists')
    errors.add(:end_date, 'Overlapping reservation exists')
  end
end
