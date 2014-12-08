module Vroom
  module Model
    class Vehicle

      attr_accessor :id, :vin, :make, :model, :year, :name, :odometer, :engineDisplacementLiters, :cityFuelEfficiency,
                    :highwayFuelEfficiency, :tankSize, :fuelType, :vehicleProfileImageUrl, :makeLogoImageUrl


      def initialize(vehicle_obj)
        @id                       = vehicle_obj['id']
        @vin                      = vehicle_obj['vin']
        @make                     = vehicle_obj['make']
        @model                    = vehicle_obj['model']
        @year                     = vehicle_obj['year']
        @name                     = vehicle_obj['name']
        @odometer                 = vehicle_obj['odometer']
        @engineDisplacementLiters = vehicle_obj['engineDisplacementLiters']
        @cityFuelEfficiency       = vehicle_obj['cityFuelEfficiency']
        @highwayFuelEfficiency    = vehicle_obj['highwayFuelEfficiency']
        @tankSize                 = vehicle_obj['tankSize']
        @fuelType                 = vehicle_obj['fuelType']
        @vehicleProfileImageUrl   = vehicle_obj['vehicleProfileImageUrl']
        @makeLogoImageUrl         = vehicle_obj['makeLogoImageUrl']
      end

    end
  end
end