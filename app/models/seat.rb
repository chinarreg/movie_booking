class Seat < ApplicationRecord
  belongs_to :cinema_hall
  has_many :booking
end
