a = [1, 3, 5, 7, 2, 4, 8, 2, 4]
b = [1, 2, 6, 7, 9, 3, 9, 3, 3]
c = [5, 2, 1, 3, 5, 7, 2, 3, 4]

# we want to search for specific numbers inside arrays above
# we want to search for even numbers:

=begin
ra = a.find_all { |x| x % 2 == 0 }
rb = b.find_all { |x| x % 2 == 0 }
rc = c.find_all { |x| x % 2 == 0 }

results = [*ra, *rb, *rc] # * placed the array in the new array.
=end
# If we want to fasten the process:
threads = []

threads << Thread.new do
    a.find_all { |x| x % 2 == 0}
end
threads << Thread.new do
    b.find_all { |x| x % 2 == 0}
end
threads << Thread.new do
    c.find_all { |x| x % 2 == 0}
end

result = threads.map(&:value).flatten

puts result
result1 = threads.each(&:join)
puts result1