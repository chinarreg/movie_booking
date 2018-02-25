class CreateShowings < ActiveRecord::Migration[5.1]
  def change
    create_table :showings do |t|
      t.integer :cinema_hall_id
      t.integer :show_timing
      t.integer :ticket_price
      t.string :film
      t.timestamps
    end
  end
end
