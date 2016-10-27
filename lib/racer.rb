class Racer
  attr_accessor :name

  def initialize name
    @name = name
    @races = []
  end

  def races
    @races
  end

  def add_race race
    @races << race
  end

  def best_race race_type, distance
    check_races = @races.select do |race|
      race.get_race_type == race_type && race.get_race_distance == distance
    end
    check_races.min_by {|race| race.total_time}
  end

end
