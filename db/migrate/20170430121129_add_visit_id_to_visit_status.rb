class AddVisitIdToVisitStatus < ActiveRecord::Migration[5.0]
  def change
    add_column :visit_statuses, :visit_id, :integer
  end
end
