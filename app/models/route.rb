class Route < ActiveRecord::Base
  has_many :route_assignments
  has_many :bus_stops, :through => :route_assignments
end
