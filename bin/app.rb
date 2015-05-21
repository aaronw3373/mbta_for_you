require 'pry'
# 
require_relative '../lib/station'
require_relative '../lib/line'
require_relative '../lib/subway_system'

# the variable named station value will be set/assigned
# the Station object with a name of 'alewife'
# station = Station.new('alewife')
# puts "station name is #{station.name}"


# Create an instance of Line
# red_line = Line.new('red')
# # Add the station alewife to the red line
# stations = red_line.add_station('alewife')

# # print out stations for the red line.
# stations.each do |station|
#   puts "Station is #{station.name} for #{red_line.name}"
# end


####### SETUP #######
mbta = SubwaySystem.new('mbta', 'Boston')

mbta.create_line('red',['alewife', 'davis', 'porter', 'harvard', 'central', 'kendall', 
  'mgh', 'park', 'downtown', 'south station'])

mbta.create_line('green',['haymarket', 'gov center', 'park', 'bolyston', 'arlington'])

mbta.create_line('orange',['north station', 'park', 'state', 'downtown'])

### Calculate stops ###

number_of_stops = mbta.calculate_stops_between_stations('alewife', 'red', 'south station', 'red')
puts "Number of stops from alewife to south station is #{number_of_stops}"

number_of_stops = mbta.calculate_stops_between_stations('south station', 'red', 'alewife', 'red')
puts "Number of stops from south station alewife is #{number_of_stops}"

puts "Doneso"
