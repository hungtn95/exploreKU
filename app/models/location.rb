class Location < ActiveRecord::Base
  belongs_to :locatable, polymorphic: true, :dependent => :destroy

  accepts_nested_attributes_for :locatable

  LOCATABLE_TYPES = %w(Building ParkingLot BusStop)

  def build_locatable(params)
    raise "Unknown locatable_type: #{locatable_type}" unless LOCATABLE_TYPES.include?(locatable_type)
    self.locatable = locatable_type.constantize.new(params)
  end
end
