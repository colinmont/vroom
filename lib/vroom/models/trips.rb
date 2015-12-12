module Vroom
  module Model
    class Trips

      attr_accessor :id, :dateStart, :dateEnd, :vehicleId, :startAddress, :endAddress, :startLatitude,
      :startLongitude, :enendLatitudedLat, :endLongitude, :startMapImageUrl, :endMapImageUrl, :score,
      :startTemperature, :endTemperature, :startWeatherConditions, :endWeatherConditions,
      :startWeatherConditionsImageUrl, :endWeatherConditionsImageUrl

      def initialize(trips_obj)
        trips_obj.each do |t|
          @id                              = t['id']
          @dateStart                       = t['dateStart']
          @dateEnd                         = t['dateEnd']
          @vehicleId                       = t['vehicleId']
          @startAddress                    = t['startAddress']
          @endAddress                      = t['endAddress']
          @startLatitude                   = t['startLatitude']
          @startLongitude                  = t['startLongitude']
          @enendLatitudedLat               = t['enendLatitudedLat']
          @endLongitude                    = t['endLongitude']
          @startMapImageUrl                = t['startMapImageUrl']
          @endMapImageUrl                  = t['endMapImageUrl']
          @score                           = t['score']
          @startTemperature                = t['startTemperature']
          @endTemperature                  = t['endTemperature']
          @startWeatherConditions          = t['startWeatherConditions']
          @endWeatherConditions            = t['endWeatherConditions']
          @startWeatherConditionsImageUrl  = t['startWeatherConditionsImageUrl']
          @endWeatherConditionsImageUrl    = t['endWeatherConditionsImageUrl']
        end
      end
    end
  end
end
