module Vroom
  module Dash
    module RestAPIMethods
      require 'json'
      require 'httparty'

      def user
        response = HTTParty.get('https://dash.by/api/chassis/v1/user',
                                :headers => { "Authorization" => "Bearer #{self.access_token}"}
        )
        # TODO: validations
        Vroom::Model::User.new(JSON.parse(response.body))
      end
      
      def trips
        # TODO: return TripSet Object
        response = HTTParty.get('https://dash.by/api/chassis/v1/trips',
                                headers: { "Authorization" => "Bearer #{self.access_token}"}
        )
        JSON.parse(response.body)
      end

      def trip(trip_id)
        response = HTTParty.get("https://dash.by/api/chassis/v1/routes/#{trip_id}",
                                headers: { "Authorization" => "Bearer #{self.access_token}"}
        )
        JSON.parse(response.body)
      end
      
      def stats
        # TODO: return Stats Object
        return 'stats'
      end
      
    end
  end
end