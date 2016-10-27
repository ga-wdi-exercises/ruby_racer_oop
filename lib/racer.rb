class Racer
  attr_reader :name, :races
  def initialize name
      @name = name
      @races = []
  end
  def add_race race
    races << race
  end
  def best_race race_type, distance
    all_races = @races.select{|i| i.race_type == race_type && i.distance == distance}
    best_races = all_races.sort_by do |best|
      best.total_time
    end
    return best_races[0]
  end
end
