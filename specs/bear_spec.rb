require('minitest/autorun')
require('minitest/reporters')
Minitest::Reporters.use! Minitest::Reporters::SpecReporter.new

require_relative('../bear')

class TestBear < Minitest::Test

  def setup
    @bear1 = Bear.new("Barnaby", "Brown")
  end

  def test_get_name
    assert_equal("Barnaby", @bear1.name)
  end

  def test_get_type
    assert_equal("Brown", @bear1.type)
  end

  

end
