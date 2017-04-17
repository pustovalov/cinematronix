class AddReferences < ActiveRecord::Migration[5.0]
  def change
    add_reference :tickets, :movie_session, index: true
    add_reference :movie_sessions, :hall, index: true
    add_reference :movie_sessions, :movie, index: true
  end
end
