class ChangeDateFormatInMovies < ActiveRecord::Migration[5.0]
  def change
    change_column :movies, :duration, 'integer USING CAST(duration AS integer)'
  end
end
