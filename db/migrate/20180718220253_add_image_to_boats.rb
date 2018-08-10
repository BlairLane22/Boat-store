class AddImageToBoats < ActiveRecord::Migration[5.2]
  def change
    add_column :boats, :image, :string
  end
end
