class Aircraft < ApplicationRecord
  include PgSearch::Model
  belongs_to :user
  has_many :bookings, dependent: :destroy
  has_many_attached :photos

  validates :title, presence: true
  validates :price_per_day, presence: true
  validates :departure_address, presence: true
  validates :arrival_address, presence: true

  scope :price_0_to_500, -> {
    where(price_per_day: (0..500))
  }

  aircraft_search_weighting = {
    aircraft_type: 'A',
    title: 'B',
    description: 'C'
  }

  pg_search_scope :search_for_aircrafts_type_title_description,
    against: aircraft_search_weighting,
    using:{
     tsearch: { prefix: true }
    }

end
