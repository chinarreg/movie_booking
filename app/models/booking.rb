class Booking < ApplicationRecord
  belongs_to :showing
  belongs_to :seat
  belongs_to :user
end
