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
    select_races = @races.select{ |race| race.race_type == race_type && race.distance == distance}
    total_time = select_races.map{ |race| race.total_time}
    race_index = total_time.index(total_time.min)
    select_races[race_index]
  end

  def best_avg_speed race_type, distance
    best = best_race race_type, distance
    best.avg_speed
  end

  def fastest_km_time race_type
    select_races = @races.select{ |race| race.race_type == race_type }
    mega_km_times = select_races.map{ |race| race.km_times }
    mega_km_times.flatten.min
  end

end
