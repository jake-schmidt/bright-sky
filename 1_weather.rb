require 'open-uri'
require 'json'

# Get raw JSON text from the OpenWeatherMap API
api_key = '4ce6f502d38ddae567bf1702b05e168c'
url = "https://api.openweathermap.org/data/2.5/weather"
url = url + "?q=Chicago&appid=#{api_key}"
weather_json = open(url).read

# Parse the JSON into a Ruby data structure
data = JSON.parse(weather_json)

# TO DO: Change this code to fetch the temperature
# from the `data` variable.
temperature = data["main"]["temp"]

# Do not touch the code below this line.
print "It is #{temperature} degrees outside. \n"
