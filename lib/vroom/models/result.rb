module Vroom
  module Model
    class Result

      attr_accessor :result

      def initialize(result_obj)
        @result      = result_obj['result']
      end
    end
  end
end
