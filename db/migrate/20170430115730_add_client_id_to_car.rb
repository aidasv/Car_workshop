class AddClientIdToCar < ActiveRecord::Migration[5.0]
  def change
    add_column :cars, :client_id, :integer
  end
end
