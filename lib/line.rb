class Line
  attr_reader :name
  # no attr_* for stations because it's encapsulated.
  # it's really a implementation detail. They I, as the creator
  # of this class may want to change.

  def initialize(lname)
    @name = lname
    @stations = []
  end

  def add_station(station_name, num)
    @stations.push(Station.new(station_name, num))
  end

  # def find_station_by_name(sname)
  #   stations.select { |station| station.name == sname}[0]
  # end

  # def number_of_stops_to_park(station_name)

  #   stop_num = @stations.index do |station|
  #     station.name == station_name
  #   end
  #   (stop_num - @park_station_index).abs
  # end
end
