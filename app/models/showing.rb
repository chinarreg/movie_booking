class Showing < ApplicationRecord
  belongs_to :cinema_hall
  has_many :bookings
  enum show_timing: ["12:00 PM", "3:00 PM", "6:00 PM", "9:00 PM"]
end
