class AddCategoryToSailboats < ActiveRecord::Migration[5.2]
  def change
    add_column :sailboats, :category, :string
  end
end
