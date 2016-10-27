require_relative "race"

class Racer < Race

  attr_accessor :name
  attr_reader :races

  def initialize name
    @name = name
    @races = []
  end

  def add_race race
    @races << race
  end

  def best_race race_type, distance
      selections = @races.select {|race| race.race_type == race_type && race.distance == distance}
      selections.min_by {|race| race.total_time}
  end

  def best_avg_speed race_type, distance
    bestrace = best_race race_type, distance
    bestrace.avg_speed
  end

  def fastest_km_time race_type
    selections = @races.select {|race| race.race_type == race_type}
    bestrace = selections.min_by {|race| race.total_time}
    bestrace.quickest_km
  end

  end
