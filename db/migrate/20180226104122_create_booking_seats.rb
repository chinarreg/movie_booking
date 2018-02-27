class CreateBookingSeats < ActiveRecord::Migration[5.1]
  def change
    create_table :booking_seats do |t|
      t.integer :booking_id
      t.integer :seat_id
      t.timestamps
    end
  end
end
