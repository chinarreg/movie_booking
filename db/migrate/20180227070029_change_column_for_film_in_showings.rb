class ChangeColumnForFilmInShowings < ActiveRecord::Migration[5.1]
  def change
    remove_column :showings, :film, :string
    add_column :showings, :film_id, :integer
  end
end
