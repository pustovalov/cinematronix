class CreateMovieSessions < ActiveRecord::Migration[5.0]
  def change
    create_table :movie_sessions do |t|
      t.datetime :start_time, null: false

      t.timestamps
    end
  end
end
