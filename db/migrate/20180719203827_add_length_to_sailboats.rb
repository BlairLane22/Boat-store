class AddLengthToSailboats < ActiveRecord::Migration[5.2]
  def change
    add_column :sailboats, :length, :decimal
  end
end
