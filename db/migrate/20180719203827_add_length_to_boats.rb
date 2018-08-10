class AddLengthToBoats < ActiveRecord::Migration[5.2]
  def change
    add_column :boats, :length, :decimal
  end
end
