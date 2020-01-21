require('minitest/autorun')
require('minitest/reporters')
Minitest::Reporters.use! Minitest::Reporters::SpecReporter.new

require_relative('../river')

class TestRiver < Minitest::Test

  def setup
    @river1 = River.new("Forth")
  end

  def test_get_name
    assert_equal("Forth", @river1.name)
  end

end
