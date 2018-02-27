class RemoveSeatIdFromBookings < ActiveRecord::Migration[5.1]
  def change
    remove_column :bookings, :seat_id
  end
end
