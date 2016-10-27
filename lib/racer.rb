class Racer
  attr_reader :name, :races

  def initialize(name)
    @name = name
    @races = []
  end

  def add_race(race)
    @races << race
  end

  def best_race(race_type, distance)
    matches = @races.select { |race| race.race_type == race_type && race.distance == distance }
    matches.sort { |match| match.total_time }.first
  end

end
