require 'rubygems'
require 'json'
require 'net/http'

rspec = "http://rsam-ci.jpmchase.net/job/RSpec/lastCompletedBuild/api/json"

resp = Net::HTTP.get_response(URI.parse(rspec))
data = resp.body

result = JSON.parse(data)

case result["result"]
when "SUCCESS"
  puts ":-)"
when "FAILURE"
  puts ":-("
else
  puts "?"
end
