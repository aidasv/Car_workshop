class AddClientIdToVisit < ActiveRecord::Migration[5.0]
  def change
    add_column :visits, :client_id, :integer
  end
end
