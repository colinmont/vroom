module Vroom
  module Model
    class Stats

      attr_accessor :dateStart, :dateEnd, :averageFuelEfficiency, :averageSpeed, :distanceDriven, :timeDriven, :fuelConsumed

      def initialize(stats_obj)
        @dateStart              = stats_obj['dateStart']
        @dateEnd                = stats_obj['dateEnd']
        @averageFuelEfficiency  = stats_obj['averageFuelEfficiency']
        @averageSpeed           = stats_obj['averageSpeed']
        @distanceDriven         = stats_obj['distanceDriven']
        @timeDriven             = stats_obj['timeDriven']
        @fuelConsumed           = stats_obj['fuelConsumed']
      end

    end
  end
end
