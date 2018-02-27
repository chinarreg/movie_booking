class AddBookingDateToBookingSeat < ActiveRecord::Migration[5.1]
  def change
    add_column :booking_seats, :booking_date, :date
    add_column :booking_seats, :showing_id, :integer
    add_index :booking_seats, [:seat_id, :booking_date, :showing_id]
  end
end
