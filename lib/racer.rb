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
    top_race = @races.select do |race|
      race.race_type == race_type && race.distance == distance
    end
    top_race.min_by {|race| race.total_time}
    #min_by will let u compare a specific thing inside of an array...u cant use just .min
  end


end
