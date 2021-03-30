# https://io.hsoub.com/articles?page=1
# scheme://domain_name/path?query

# scheme => /https?/
# domain_name => /[\w\-\.]+/
# path => /.*/
# query => /.*/

#(https?):\/\/([\w\-\.]+)\/(.*)\?(.*)


str = "https://io.hsoub.com/article?page=1"
#url_matcher = /(https?):\/\/([\w\-\.]+)\/(.*)\?(.*)/ 👇or
url_matcher = /(?<scheme>https?):\/\/(?<domain>[\w\-\.]+)\/(?<path>.*)\?(?<query>.*)/
result = str.match(url_matcher)

=begin
puts "Original url was: #{result[0]}"
puts "Scheme is: #{result[1]}"
puts "Domain is : #{result[2]}"
puts "Path is: #{result[3]}"
puts "Query is: #{result[4]}"
=end 

puts "Original url was: #{result[0]}"
puts "Scheme is: #{result['scheme']}"
puts "Domain is : #{result['domain']}"
puts "Path is: #{result['path']}"
puts "Query is: #{result['query']}"