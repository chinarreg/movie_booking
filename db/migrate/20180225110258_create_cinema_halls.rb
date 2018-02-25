class CreateCinemaHalls < ActiveRecord::Migration[5.1]
  def change
    create_table :cinema_halls do |t|
      t.string :name

      t.timestamps
    end
  end
end
