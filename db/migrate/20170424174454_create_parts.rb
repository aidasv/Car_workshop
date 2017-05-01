class CreateParts < ActiveRecord::Migration[5.0]
  def change
    create_table :parts do |t|
      t.string :name
      t.string :code
      t.string :unit
      t.decimal :quantity
      t.decimal :price

      t.timestamps
    end
  end
end
