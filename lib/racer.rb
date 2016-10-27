class Racer
  attr_accessor :name
  attr_reader :races

  def initialize name
    @name = name
    @races = []
  end

  def add_race race
    @races << race
  end

  def best_race type, distance
    sel_races = @races.select{|race| race.race_type == type && race.distance == distance}
    total_time = sel_races.map {|race| race.total_time}
    race_index = total_time.index(total_time.min)
    return sel_races[race_index]
  end

end
