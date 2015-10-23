require 'rubygems'
require 'yahoo_weatherman'

def my_weather(location)

client = Weatherman::Client.new

weather = client.lookup_by_location(location).condition['text']

current_condition = case weather
when "Fair"
  "Its 85 degrees and sunny!"
when 'Sunny'
  "Its 85 degrees and sunny!"
when 'Partly Cloudy'
  "55 degrees and partly cloudy!"
when 'Cloudy'
  "55 degrees and crazy cloudy!"
when 'Rainy'
  "60 degrees and crazy rainy!"
when 'Snowy'
  "32 degrees and super snowy!"
end

puts current_condition

end

puts "Please enter your city, state or zip."
location = gets.chomp

my_weather(location)