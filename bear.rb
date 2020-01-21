class Bear

  attr_reader :name, :type

  def initialize(name, type)
    @name = name
    @type = type
    @stomach = []
  end

  def food_count
    return @stomach.length()
  end

  def eat_from(river)
    fish = river.lose_fish
    @stomach.push(fish)
  end

  def roar
    return "ROAR!"
  end

end
