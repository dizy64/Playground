require "net/http"
require "uri"
require "JSON"

uri = URI.parse("https://ip-ranges.amazonaws.com/ip-ranges.json")
response = Net::HTTP.get_response(uri)
body = JSON.parse(response.body)

result = body["prefixes"].map { |p| p["ip_prefix"] if p["region"] == "ap-northeast-2" && p["service"] == "S3" }.compact

puts "createDate: #{body["createDate"]}"
puts "token #{body["syncToken"]}"
puts '--------- Seoul Region S3 CIDR LIST --------'
puts result
