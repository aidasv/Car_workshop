class CreateVisits < ActiveRecord::Migration[5.0]
  def change
    create_table :visits do |t|
      t.string :name
      t.date :end_date
      t.date :return_date
      t.integer :mileage

      t.timestamps
    end
  end
end
