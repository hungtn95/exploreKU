class CreateBusStops < ActiveRecord::Migration
  def change
    create_table :bus_stops do |t|
      t.integer :number

      t.timestamps null: false
    end
  end
end
