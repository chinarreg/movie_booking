class Showing < ApplicationRecord
  belongs_to :cinema_hall
  has_many :bookings
end
