# require "pry"
# require_relative 'lib/racer'

class Race
  attr_accessor :name, :race_type, :distance, :km_times

  def initialize (name, race_type, distance, km_times)
    @name = name
    @race_type = race_type
    @distance = distance
    @km_times = km_times
  end

  def total_time
    km_times.inject(0, :+)
  end

  def slowest_km
    km_times.max
  end

  def quickest_km
    km_times.min
  end

  def avg_time_per_km
    (total_time/@km_times.length.to_f).round(2)
  end

  def avg_speed
    (total_time/@km_times.length.to_f).round(2)
  end
end

# binding.pry
