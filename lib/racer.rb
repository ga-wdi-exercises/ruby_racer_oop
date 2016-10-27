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
    sel_races[race_index]
  end

  def best_avg_speed type, distance
    best = best_race type, distance
    best.avg_speed
  end

  def fastest_km_time type
    sel_races = @races.select{|race| race.race_type == type}
    all_times = sel_races.map {|race| race.km_times}
    all_times.flatten.min
    end

end
