class CreateTickets < ActiveRecord::Migration[5.0]
  def change
    create_table :tickets do |t|
      t.float :price, null: false

      t.timestamps
    end
  end
end
