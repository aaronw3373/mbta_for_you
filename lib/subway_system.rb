class SubwaySystem
  attr_reader :name, :city, :lines

  def initialize(name, city)
    @name = name
    @city = city

    @lines = []
  end

  def create_line(line_name, station_names)

    line = Line.new(line_name)

    station_names.each do |sname|
       line.add_station(sname, station_names[sname] )
    end

    @lines.push(line)
  end


  def calc_stops(start, finish)
    if finish.line != start.line
      (finish.num.abs) - (start.num.abs * -1)
    else
    ((finish.num) - (start.num)).abs
    end
  end

   # # calculate number of stops for stations on the same line
   # def calculate_stops_between_stations(sstation_name, sline_name,
   #   estation_name, eline_name )

   #  # 1. Find the start line given it's name
   #  sline = find_line_by_name(sline_name)

   #  # 2. Find the number of stops from park st given the start station name
   #  start_stops = sline.number_of_stops_to_park(sstation_name)

   #  # 3. Find the end line given it's name
   #   eline = find_line_by_name(eline_name)
   #  # 4. Find the number of stops from park st given the end station name
   #  end_stops = eline.number_of_stops_to_park(estation_name)

   #  # 5. Add the number of stops from park st for the start and end station
   #  start_stops + end_stops
   # end

   # private
   # # Given a line name return the Line instance in this subway system's
   # # @lines array
   # def find_line_by_name(line_name)
   #  @lines.select { |line| line.name == line_name}[0]
   # end


end

