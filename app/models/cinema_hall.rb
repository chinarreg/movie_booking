class CinemaHall < ApplicationRecord
  has_many :seats
  has_many :showings
end
