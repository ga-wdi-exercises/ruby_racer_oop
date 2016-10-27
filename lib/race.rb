class Race
  attr_accessor :name, :race_type, :distance, :km_times

    def initialize name, race_type, distance, km_times
      @name = name
      @race_type = race_type
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
      @km_times.reduce(:+) / @km_times.size.to_f
    end

    def avg_speed
      #total time in km
      total_mins = total_time.to_f / 60
      # total distance in meters
      total_meters = @distance.to_f * 1000
      (total_meters/total_mins).round(2)
    end

    def human_readable_times_for_kms
      @km_times.map {|time|
        mins = time /60
        secs = time % 60
        "#{mins} minute(s) #{secs} second(s)"}
    end


end
