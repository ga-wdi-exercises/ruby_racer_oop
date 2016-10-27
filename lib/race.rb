class Race
  attr_accessor :name, :race_type, :distance, :km_times, :total_time
  def initialize name, race_type, distance, km_times
    @name = name
    @race_type = race_type
    @distance = distance
    @km_times = km_times
  end
  def total_time
    return km_times.inject(:+)
  end
  def slowest_km
    return km_times.max
  end
  def quickest_km
    return km_times.min
  end
  def avg_time_per_km
    return (total_time/km_times.length.to_f).round(2)
  end
end
