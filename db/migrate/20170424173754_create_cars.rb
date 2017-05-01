class CreateCars < ActiveRecord::Migration[5.0]
  def change
    create_table :cars do |t|
      t.string :make
      t.string :model
      t.string :production_year
      t.string :license_plate
      t.string :vin_code
      t.string :body_type
      t.string :cubic_capacity
      t.string :power
      t.string :fuel
      t.string :color
      t.date :ta_date

      t.timestamps
    end
  end
end
