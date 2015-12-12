# include vroom modules
require_relative 'vroom/chassis'

# include vroom models
require_relative 'vroom/models/user'
require_relative 'vroom/models/result'
require_relative 'vroom/models/stats'

# HTTP module so we can communicate with Dash
# require 'vroom/http_service'

# miscellaneous
require_relative 'vroom/version'

module Vroom
  # A Ruby interface for the Dash.by Chassis API.
  # See https://github.com/aren55555/vroom for a general introduction to Vroom
end
