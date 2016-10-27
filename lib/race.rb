class Race
attr_reader :name,  :race_type, :distance, :km_times
  def initialize(name, race_type, distance, km_times)
    @name = name
    @race_type = race_type
    @distance = distance
    @km_times = km_times
  end


end
