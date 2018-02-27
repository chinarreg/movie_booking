class Showing < ApplicationRecord
  belongs_to :cinema_hall
  belongs_to :film
  has_many :bookings
  enum show_timing: ["12:00 PM", "3:00 PM", "6:00 PM", "9:00 PM"]

  def available_seats(movie_date)
    self.cinema_hall.seats - (self.cinema_hall.seats.joins(:booking_seats).where(:'booking_seats.booking_date' => movie_date))
  end
end
