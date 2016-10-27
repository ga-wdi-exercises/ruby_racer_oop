# require "pry"

class Race
  attr_accessor :name, :race_type, :distance, :km_times

  def initialize name, race_type, distance, km_times
    @name = name
    @race_type = race_type
    @distance = distance
    @km_times = km_times

  end

  def total_time
    @total_time = km_times.reduce(:+)
  end

  def slowest_km
    @slowest_km = km_times.max
  end

  def quickest_km
    @quickest_km = km_times.min
  end

  def avg_time_per_km
    @avg_time_per_km = total_time.to_f / @distance.to_f
  end

  def avg_speed
    #total_time in km
    total_mins = total_time.to_f / 60
    total_m = @distance.to_f * 1000
    min_per_meter = (total_m / total_mins).round(2)
  end
  def human_readable_times_for_kms
    @km_times.map{ |time| "#{(time / 60).round(0)} minute(s) #{time % 60} second(s)"}
  end
end
# binding.pry
