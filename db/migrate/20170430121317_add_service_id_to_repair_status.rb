class AddServiceIdToRepairStatus < ActiveRecord::Migration[5.0]
  def change
    add_column :repair_statuses, :service_id, :integer
  end
end
