class Aircraft < ApplicationRecord
  belongs_to :user
  has_many :bookings, dependent: :destroy
  has_many :reviews, dependent: :destroy
  has_many_attached :photos

  validates :title, presence: true
  validates :price_per_day, presence: true
  validates :departure_address, presence: true
  validates :arrival_address, presence: true
 end
