class AddCarIdToVisit < ActiveRecord::Migration[5.0]
  def change
    add_column :visits, :car_id, :integer
  end
end
