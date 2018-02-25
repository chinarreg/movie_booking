class CreateBookings < ActiveRecord::Migration[5.1]
  def change
    create_table :bookings do |t|
      t.integer :seat_id
      t.integer :user_id
      t.integer :showing_id

      t.timestamps
    end
  end
end
