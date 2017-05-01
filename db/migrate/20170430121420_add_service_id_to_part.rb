class AddServiceIdToPart < ActiveRecord::Migration[5.0]
  def change
    add_column :parts, :service_id, :integer
  end
end
