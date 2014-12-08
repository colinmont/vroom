module Vroom
  module Model
    class VehicleList

      @vehicle_map

      def initialize(vehicles_obj)
        @vehicle_map = @vehicle_map || {}
        vehicles_obj.each do |v|
          @vehicle_map[v['id']] = Vroom::Model::Vehicle.new(v)
        end
      end

    end
  end
end