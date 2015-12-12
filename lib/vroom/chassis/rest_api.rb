module Vroom
  module Dash
    module RestAPIMethods
      require 'json'
      require 'httparty'

      def user
        response = HTTParty.get('https://dash.by/api/chassis/v1/user', :headers => { "Authorization" => "Bearer #{self.access_token}"})
        # TODO: validations
        Vroom::Model::User.new(JSON.parse(response.body))
      end

      def trips(startTime, endTime)
        response = HTTParty.get("https://dash.by/api/chassis/v1/trips?startTime=#{startTime}&endTime=#{endTime}", headers: { "Authorization" => "Bearer #{self.access_token}"})
        c = JSON.parse(response.body)
        Vroom::Model::Trips.new(c['result'])
      end

      def trip(trip_id)
        response = HTTParty.get("https://dash.by/api/chassis/v1/routes/#{trip_id}", headers: { "Authorization" => "Bearer #{self.access_token}"})
        c = JSON.parse(response.body)
        c['result']
      end

      def stats(startTime, endTime)
        response = HTTParty.get("https://dash.by/api/chassis/v1/stats?startTime=#{startTime}&endTime=#{endTime}", headers: { "Authorization" => "Bearer #{self.access_token}"})
        Vroom::Model::Stats.new(JSON.parse(response.body))
      end

    end
  end
end
