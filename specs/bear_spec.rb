require('minitest/autorun')
require('minitest/reporters')
Minitest::Reporters.use! Minitest::Reporters::SpecReporter.new

require_relative('../bear')
require_relative('../river')
require_relative('../fish')

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

  def test_food_count
    assert_equal(0, @bear1.food_count)
  end

  def test_eat_from_river
    @fish1 = Fish.new("Nemo")
    @fish2 = Fish.new("Dory")
    @fish3 = Fish.new("Billy Bass")

    @start_fish = [@fish1, @fish2, @fish3]

    @river1 = River.new("Forth", @start_fish)

    @bear1.eat_from(@river1)
    assert_equal(1, @bear1.food_count)
    assert_equal(2, @river1.fish_count)
  end

  def test_can_roar
    assert_equal("ROAR!", @bear1.roar)
  end

end
