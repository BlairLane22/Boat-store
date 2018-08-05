class AddViewedToSailboats < ActiveRecord::Migration[5.2]
  def change
    add_column :sailboats, :viewed, :integer, default: 0
  end
end
