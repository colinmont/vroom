module Vroom
  module Model
    class Result
      require 'vroom/model/trips'

      attr_accessor :result

      def initialize(result_obj)
        @result      = Vroom::Model::Trips.new(result_obj['result'])
      end
    end
  end
end
