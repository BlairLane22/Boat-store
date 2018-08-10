class CreateBoats < ActiveRecord::Migration[5.2]
  def change
    create_table :boats do |t|
      t.string :brand
      t.string :model
      t.text :description
      t.string :condition
      t.string :title
      t.decimal :price, default: 0

      t.timestamps
    end
  end
end
