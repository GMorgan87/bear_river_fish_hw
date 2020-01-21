require('minitest/autorun')
require('minitest/reporters')
Minitest::Reporters.use! Minitest::Reporters::SpecReporter.new

require_relative('../bear')

class TestBear < Minitest::Test

  def setup
    @bear1 = Bear.new("Barnaby", "Brown")
  end

end
