class AddServiceIdToWorker < ActiveRecord::Migration[5.0]
  def change
    add_column :workers, :service_id, :integer
  end
end
