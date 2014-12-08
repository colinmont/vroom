require 'minitest/autorun'
require 'vroom'

class VroomTest < Minitest::Test  
  def test_rest_methods
    token = '3kxrTIhDk2Nrt2NG1RIR7UlevdhI2cUkvF-LMAW0b-Q497hM1z3M5Q8m8eKg3IRJO_LO8NdgXC5PkazD2YlVyZsyCwgyi3ERiIi3CijlsDVaEmuQn14vVw'
    c = Vroom::Dash::Chassis.new(token)
    assert_equal c.user, 'user'
  end
end