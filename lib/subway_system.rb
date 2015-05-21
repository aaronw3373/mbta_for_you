class SubwaySystem
  attr_reader :name, :city

  def initialize(name, city)
    @name = name
    @city = city

    @lines = []
  end

  # Given a line name and an array of station names
  # build a Line and add it to this SubwaySystem
  def create_line(line_name, station_names)
    # Create a new Line given a name, like 'red'
    line = Line.new(line_name)

    # For each station name 
    station_names.each do |sname|
      # create a new station named sname, like 'alewife'
      # add it to the line we created just above
      # Oops,line.add_station(Station.new(sname))
       line.add_station(sname)
    end

    # add this line, we just created, to this subway systems array of lines
    @lines.push(line)
  end

   # calculate number of stops for stations on the same line
   def calculate_stops_between_stations(sstation_name, sline_name, 
     estation_name, eline_name )

    # 1. Find the start line given it's name
    sline = find_line_by_name(sline_name)
    
    # 2. Find the number of stops from park st given the start station name
    start_stops = sline.number_of_stops_to_park(sstation_name)

    # 3. Find the end line given it's name
     eline = find_line_by_name(eline_name)
    # 4. Find the number of stops from park st given the end station name
    end_stops = eline.number_of_stops_to_park(estation_name)

    # 5. Add the number of stops from park st for the start and end station
    start_stops + end_stops
   end

   private 
   # Given a line name return the Line instance in this subway system's 
   # @lines array
   def find_line_by_name(line_name)
    @lines.select { |line| line.name == line_name}[0]
   end
end

