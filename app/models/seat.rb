class Seat < ApplicationRecord
  belongs_to :cinema_hall
  has_many :booking_seats
  has_many :bookings, through: :booking_seats
end
