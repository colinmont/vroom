module Vroom
  module Model
    class User
      require 'units'
      require 'vroom/model/vehicle'
      require 'vroom/model/vehicle_list'

      attr_accessor :id, :firstName, :lastName, :gender, :userProfileImageUrl, :overallScore, :preferredUnits,
                    :currentVehicle, :vehicles


      def initialize(user_obj)
        @id                  = user_obj['id']
        @firstName           = user_obj['firstName']
        @lastName            = user_obj['lastName']
        @gender              = user_obj['gender']
        @userProfileImageUrl = user_obj['userProfileImageUrl']
        @overallScore        = user_obj['overallScore']
        @preferredUnits      = Vroom::Model::Units.new(user_obj['preferredUnits'])
        @currentVehicle      = Vroom::Model::Vehicle.new(user_obj['currentVehicle'])
        @vehicles            = Vroom::Model::VehicleList.new(user_obj['vehicles'])
      end

    end
  end
end
