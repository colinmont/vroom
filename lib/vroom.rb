# include vroom modules
require 'vroom/chassis'

# include vroom models
require 'vroom/models/user'
require_relative 'vroom/models/result'
require 'vroom/models/stats'

# HTTP module so we can communicate with Dash
# require 'vroom/http_service'

# miscellaneous
require 'vroom/version'

module Vroom
  # A Ruby interface for the Dash.by Chassis API.
  # See https://github.com/aren55555/vroom for a general introduction to Vroom
end
