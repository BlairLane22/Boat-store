class AddColorToSailboats < ActiveRecord::Migration[5.2]
  def change
    add_column :sailboats, :color, :string
  end
end
