require('minitest/autorun')
require('minitest/reporters')
Minitest::Reporters.use! Minitest::Reporters::SpecReporter.new

require_relative('../fish')

class TestFish < Minitest::Test

  def setup
    @fish1 = Fish.new("nemo")
  end

end
