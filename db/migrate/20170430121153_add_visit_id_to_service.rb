class AddVisitIdToService < ActiveRecord::Migration[5.0]
  def change
    add_column :services, :visit_id, :integer
  end
end
