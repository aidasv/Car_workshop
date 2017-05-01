class CreateWorkers < ActiveRecord::Migration[5.0]
  def change
    create_table :workers do |t|
      t.string :name
      t.string :surname
      t.string :position
      t.string :email
      t.boolean :is_admin

      t.timestamps
    end
  end
end
