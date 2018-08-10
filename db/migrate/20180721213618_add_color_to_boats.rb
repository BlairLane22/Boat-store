class AddColorToBoats < ActiveRecord::Migration[5.2]
  def change
    add_column :boats, :color, :string
  end
end
