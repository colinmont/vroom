require_relative 'chassis/rest_api'

module Vroom
  module Dash
    class Chassis
      # Creates a new Chassis API client.
      # @param [String] access_token access token
      # @return [Vroom::Dash::Chassis] the API client
      def initialize(access_token = nil)
        @access_token = access_token
      end

      attr_reader :access_token

      include RestAPIMethods

    end
  end
end
