class AddSlugToFilm < ActiveRecord::Migration[5.1]
  def change
    add_column :films, :slug, :string, null: false
    add_index :films, :slug, unique: true
  end
end
