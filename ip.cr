require "http/client"

response = HTTP::Client.get "http://icanhazip.com"
puts response.body.lines.first # => "<!doctype html>"
