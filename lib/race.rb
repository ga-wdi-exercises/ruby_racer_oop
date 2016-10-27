class Race
attr_reader :name,  :race_type, :distance, :km_times
  def initialize(name, race_type, distance, km_times)
    @name = name
    @race_type = race_type
    @distance = distance
    @km_times = km_times
  end

  def total_time
    @km_times.map(&:to_i).reduce(0, :+)
    #makes sure values are ints and adds them up
  end
end
