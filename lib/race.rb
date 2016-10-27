class Race

  attr_accessor :name, :race_type, :distance, :km_times

  def initialize name, race_type, distance, km_times
    @name = name
    @race_type = race_type
    @distance = distance
    @km_times = km_times
  end

  def total_time
    km_times.reduce(:+)
  end

  def slowest_km
    km_times.max
  end

  def quickest_km
    km_times.min
  end

  def avg_time_per_km
    (total_time / @km_times.length.to_f).round(2)
  end

  def avg_speed
    meters = @distance*1000
    seconds = total_time/60.to_f
    (meters/seconds).round(2)
  end

  def human_readable_times_for_kms
    km_times.map do |time|
    mm, ss = time.divmod(60)
    "#{mm} minute(s) #{ss} second(s)"
    end
  end

end
