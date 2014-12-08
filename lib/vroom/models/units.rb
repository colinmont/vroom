module Vroom
  module Model
    class Units

      attr_accessor :distance, :temperature, :volume, :fuelEfficiency

      def initialize(units_obj)
        @distance       = units_obj['distance']
        @temperature    = units_obj['temperature']
        @volume         = units_obj['volume']
        @fuelEfficiency = units_obj['fuelEfficiency']
      end

    end
  end
end