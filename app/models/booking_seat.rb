class BookingSeat < ApplicationRecord
  belongs_to :booking
  belongs_to :seat
  # validates_uniqueness_of :seat_id, scope: [:booking_date, :showing_id], message: "Seat is already booked for the given date."
end
