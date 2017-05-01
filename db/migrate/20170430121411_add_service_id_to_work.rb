class AddServiceIdToWork < ActiveRecord::Migration[5.0]
  def change
    add_column :works, :service_id, :integer
  end
end
