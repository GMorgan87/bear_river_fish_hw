class River

  attr_reader :name

  def initialize(name, start_fish)
    @name = name
    @fishes = start_fish
    #bad english but makes clear that @fishes is an array and not an individual fish
  end

  def fish_count
    return @fishes.length()
  end

  def lose_fish
    return @fishes.pop()
  end


end
