require 'net/http'
require 'json'

raise "Argument error" unless ARGV.size == 1

city = ARGV[0]
result = Net::HTTP.get('api.openweathermap.org', "/data/2.5/weather?q=#{city}")

json_result = JSON.parse(result)

weather = json_result["weather"]

puts weather[0]["description"]

