require('minitest/autorun')
require('minitest/reporters')
Minitest::Reporters.use! Minitest::Reporters::SpecReporter.new

require_relative('../river')
require_relative('../fish')

class TestRiver < Minitest::Test

  def setup
    @fish1 = Fish.new("Nemo")
    @fish2 = Fish.new("Dory")
    @fish3 = Fish.new("Billy Bass")

    @start_fish = [@fish1, @fish2, @fish3]

    @river1 = River.new("Forth", @start_fish)
  end

  def test_get_name
    assert_equal("Forth", @river1.name)
  end

  def test_fish_count
    assert_equal(3, @river1.fish_count)
  end

  def test_lose_fish
    taken_fish = @river1.lose_fish
    assert_equal("Billy Bass", taken_fish.name)
    assert_equal(2, @river1.fish_count)
  end




  # def test_add_fish
  #   @river1.add_fish(@new_fishes)
  #   assert_equal(3, @river1.fish_count)
  # end

end
