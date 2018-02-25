class CreateSeats < ActiveRecord::Migration[5.1]
  def change
    create_table :seats do |t|
      t.string :seat_number
      t.integer :cinema_hall_id

      t.timestamps
    end
  end
end
