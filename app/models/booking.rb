class Booking < ApplicationRecord
  belongs_to :showing
  belongs_to :user
  has_many :booking_seats
  has_many :seats, through: :booking_seats
  attr_accessor :no_of_tickets
  validates_presence_of :no_of_tickets
  validates :no_of_tickets, numericality: {greater_than: 0}
  validate :available_tickets

  private

  def available_tickets
    unless self.showing.available_seats(self.booking_date).count >= self.no_of_tickets.to_i
      errors.add(:base, "Seats are not available.")
    end
  end
end
