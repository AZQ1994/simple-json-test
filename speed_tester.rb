require 'uri'
require 'net/http'

ITERATION = 100

uri = URI('http://localhost:3000/posts.json')

res = Net::HTTP.get_response(uri)
if res.is_a?(Net::HTTPSuccess)
  puts res.body
else
  puts "error"
  exit
end

puts "start"
start_time = Time.now

ITERATION.times do |i|
  res = Net::HTTP.get_response(uri)
end

end_time = Time.now
puts "end"

elapsed_time = end_time - start_time

puts "Time spent: #{elapsed_time}, average: #{elapsed_time / ITERATION}"
