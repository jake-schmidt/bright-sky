require 'open-uri'
require 'json'

# Get raw JSON text from the Divvy API
url = "http://bikes.kiei925.com/stations/search.json"
url = url + "?address=Global+Hub,Northwestern"
station_json = open(url).read

# Parse the JSON into a Ruby data structure
data = JSON.parse(station_json)

# TO DO: Change this code to store the correct, live data
# into the appropriate variables.
station_name = data["stationName"]
bike_count = data["availableBikes"]
dock_count = data["availableDocks"]

# Do not touch the code below this line.
print "The nearest station is #{station_name}.\n"
print "If you need to rent a bike, there are #{bike_count} bikes available right now.\n"
print "If you need to return a bike, there are #{dock_count} open docking spaces right now.\n"
