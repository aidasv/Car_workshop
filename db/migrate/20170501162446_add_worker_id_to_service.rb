class AddWorkerIdToService < ActiveRecord::Migration[5.0]
  def change
    add_column :services, :worker_id, :integer
  end
end
