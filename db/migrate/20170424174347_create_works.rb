class CreateWorks < ActiveRecord::Migration[5.0]
  def change
    create_table :works do |t|
      t.string :name
      t.string :unit
      t.decimal :quantity
      t.decimal :price

      t.timestamps
    end
  end
end
