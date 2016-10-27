class Racer
  attr_reader :name, :races
  def initialize name
      @name = name
      @races = []
  end
  def add_race(race)
    races << race
  end
  def best_race(race_type, distance)
    
  end
end
