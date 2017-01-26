class CreateParkingLots < ActiveRecord::Migration
  def change
    create_table :parking_lots do |t|
      t.string :status

      t.timestamps null: false
    end
  end
end
