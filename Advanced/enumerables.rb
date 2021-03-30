students = [{name: 'ahmad', grade: 70}, {name: 'muhammad', grade: 80}, {name: 'wissam', grade: 40}]
ah = students.find { |x| x[:name] == 'ahmad'}
more_than_sexty = students.find_all { |x| x[:grade] >= 60}
less_than_sexty = students.reject { |x| x[:grade] < 60 }
puts ah
puts more_than_sexty
puts less_than_sexty

numbers = [4, 6, 1, 7]
puts numbers.sort

sort = students.sort do |a, b|
    a[:grade] <=> b[:grade]
end

puts sort

sort2 = students.sort_by do |x|
    x[:grade]
end

puts sort2

num = [1, 2, 2, 3, 4, 5, 1, 3]
puts num.uniq