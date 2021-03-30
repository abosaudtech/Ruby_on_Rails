str = "hello "
puts str * 2
str2 = "world"
puts str * 2 + str2
puts "hello".upcase
puts "HELLO".downcase
puts "how are you".capitalize

str = "hello world"
str.insert 5, ","
puts str

str = "hello world, this is my first program"
str["my first"] = "my second"
puts str

puts "Hi ther".delete("there")

str = "sport, education, design"
str.split(',')
puts str

str.split(',').map(&:lstrip)
puts str 

str = "error: something went wrong (address 00:00:00:00 not found)"
puts str
puts str.partition(":")

 type, _, message= str.partition(':')
puts type 
puts message