class Racer
  attr_accessor :name, :races
  def initialize name
      @name = name
      @races = []
  end

  def add_race(race)
    @races << race
  end
end
