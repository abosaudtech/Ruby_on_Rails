collection = ['quick', 'normal', 'slow']
collection.each do |element|
    puts element
end

collection.each_with_index do |element, index|
    puts "#{element} at #{index}"
end

numbers = [1, 2, 3]
puts numbers.map { |x| x * 3 }

students = [{name: 'ahamd', grade: 70}, {name: 'muhammad', grade: 80}, {name: 'wissam', grade: 40}]

st = students.map { |s| s[:grade] }
puts st

sum = students.map { |s| s[:grade] }.reduce(:+)
puts sum

avg = sum.to_f / students.count
puts avg
# we can short to line above to be in one line like following:
avg = students.map { |s| s[:grade] }.reduce(:+).to_f / students.count
puts avg

puts students.map { |s| s[:name] }.join(', ')
puts students.map { |s| s[:name] }.reduce(:+)