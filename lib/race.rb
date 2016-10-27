class Race
  attr_accessor :name, :race_type, :distance, :km_times

  def initialize name, type, distance, km_times =[]
    @name = name
    @race_type = type
    @distance = distance
    @km_times = km_times
  end

  def total_time
    @km_times.reduce(:+)
  end

  def slowest_km
    @km_times.max
  end

  def quickest_km
    @km_times.min
  end

  def avg_time_per_km
    @km_times.reduce(:+).to_f.round(2)/@km_times.length
  end

  
end
