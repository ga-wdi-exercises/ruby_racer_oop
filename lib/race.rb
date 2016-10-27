class Race
  attr_accessor :name, :race_type, :distance, :times
  def initialize name, race_type, distance, times
    @name = name
    @race_type = race_type
    @distance = distance
    @times = times
  end

  def km_times
    self.times
  end

  def total_time
    self.times.reduce {|x, y| x + y}
  end

  def slowest_km
    self.times.max
  end

  def quickest_km
    self.times.min
  end

  def avg_time_per_km
    totaltimes = self.times.reduce {|x, y| x + y}
    totaltimes/self.times.length.round(2)
  end

  def avg_speed
    totaltimes = self.times.reduce {|x, y| x + y}
    inminutes = totaltimes/60.00
    avgspeed = (distance*1000)/inminutes
    avgspeed.round(2)
  end

  def human_readable_times_for_kms
    readabletimes = []
    times.each do |tim|
      readableminutes = tim/60
      readableseconds = tim%60
      readabletimes << "#{readableminutes} minute(s) #{readableseconds} second(s)"
    end
    readabletimes
  end

end
