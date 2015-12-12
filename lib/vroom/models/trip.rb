module Vroom
  module Model
    class Trips

      attr_accessor :id, :dateStart, :dateEnd, :vehicleId, :startAddress, :endAddress, :startLatitude,
      :startLongitude, :enendLatitudedLat, :endLongitude, :startMapImageUrl, :endMapImageUrl, :score,
      :startTemperature, :endTemperature, :startWeatherConditions, :endWeatherConditions,
      :startWeatherConditionsImageUrl, :endWeatherConditionsImageUrl

      def initialize(trips_obj)
        @id                              = trips_obj['id']
        @dateStart                       = trips_obj['dateStart']
        @dateEnd                         = trips_obj['dateEnd']
        @vehicleId                       = trips_obj['vehicleId']
        @startAddress                    = trips_obj['startAddress']
        @endAddress                      = trips_obj['endAddress']
        @startLatitude                   = trips_obj['startLatitude']
        @startLongitude                  = trips_obj['startLongitude']
        @enendLatitudedLat               = trips_obj['enendLatitudedLat']
        @endLongitude                    = trips_obj['endLongitude']
        @startMapImageUrl                = trips_obj['startMapImageUrl']
        @endMapImageUrl                  = trips_obj['endMapImageUrl']
        @score                           = trips_obj['score']
        @startTemperature                = trips_obj['startTemperature']
        @endTemperature                  = trips_obj['endTemperature']
        @startWeatherConditions          = trips_obj['startWeatherConditions']
        @endWeatherConditions            = trips_obj['endWeatherConditions']
        @startWeatherConditionsImageUrl  = trips_obj['startWeatherConditionsImageUrl']
        @endWeatherConditionsImageUrl    = trips_obj['endWeatherConditionsImageUrl']
      end
    end
  end
end
