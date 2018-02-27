class AddPriceColumnsInBookings < ActiveRecord::Migration[5.1]
  def change
    add_column :bookings, :total_price, :integer
    add_column :bookings, :booking_date, :date
  end
end
