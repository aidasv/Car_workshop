class CreateVisitStatuses < ActiveRecord::Migration[5.0]
  def change
    create_table :visit_statuses do |t|
      t.string :name
      t.date :date
      t.text :comment
      t.integer :worker_id

      t.timestamps
    end
  end
end
