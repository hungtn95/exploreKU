class BusStop < ActiveRecord::Base
  has_one :location, as: :locatable, :dependent => :destroy
  has_many :route_assignments
  has_many :routes, :through => :route_assignments
end
