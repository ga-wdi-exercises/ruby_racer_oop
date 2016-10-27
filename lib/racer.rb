
class Racer
  attr_accessor :name
  attr_reader :races

  def initialize name, races = []
    @name = name
    @races = races
  end

  def add_race race
    races << race
  end

  def best_race type, length
    goodraces = @races.select {|n| n.race_type == type && n.distance == length}
    bestraces = goodraces.sort_by do |y|
      y.total_time
    end
    bestraces[0]

end


end
