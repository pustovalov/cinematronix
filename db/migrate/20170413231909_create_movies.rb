class CreateMovies < ActiveRecord::Migration[5.0]
  def change
    create_table :movies do |t|
      t.string :name, null: false
      t.string :duration, null: false
      t.string :genre, null: false
      t.string :description, null: false
      t.string :image

      t.timestamps
    end
  end
end
