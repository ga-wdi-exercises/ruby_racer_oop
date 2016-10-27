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
  end
