class CreateRouteAssignments < ActiveRecord::Migration
  def change
    create_table :route_assignments do |t|
      t.belongs_to :bus_stop, index: true
      t.belongs_to :route, index: true

      t.timestamps null: false
    end
  end
end
