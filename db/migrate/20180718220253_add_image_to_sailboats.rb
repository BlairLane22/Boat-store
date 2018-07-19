class AddImageToSailboats < ActiveRecord::Migration[5.2]
  def change
    add_column :sailboats, :image, :string
  end
end
