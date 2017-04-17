class ChangeFormatForPrice < ActiveRecord::Migration[5.0]
  def change
    change_column :tickets, :price, :decimal, precision: 5, scale: 2
  end
end
