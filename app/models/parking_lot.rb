class ParkingLot < ActiveRecord::Base
  has_one :location, as: :locatable, :dependent => :destroy
end
