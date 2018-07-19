class AddLengthToSailboat < ActiveRecord::Migration[5.2]
  def change
    add_column :sailboats, :length, :integer
  end
end
