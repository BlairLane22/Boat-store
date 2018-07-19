class AddUserIdToSailboats < ActiveRecord::Migration[5.2]
  def change
    add_column :sailboats, :user_id, :integer
  end
end
