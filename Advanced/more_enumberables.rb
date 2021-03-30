num = [2, 6, 4]
puts num.all? { |x| x.even? }
#or we can do it in another way:
puts num.all?(&:even?)

num = [3, 6, 4]
puts num.all?(&:even?)

# is there one or more even element in arry?:
num = [2, 3, 7, 8]
puts num.any?(&:even?)

# is there just one even element in arry?:
num = [2, 3, 5]
puts num.one?(&:even?)
num = [2, 3, 4]
puts num.one?(&:even?)

# there is no even element in arry?:
num = [1, 3, 7]
puts num.none?(&:even?)
num = [1, 4, 7]
puts num.none?(&:even?)

# let me know how many even element in arry:
num = [1, 4, 6]
puts num.count { |x| x.even? } # => 2
puts num.count(&:even?)

# without itrator method count counting how much
# sort of data we have in specific array:
num = [2, 2, 5, 6, 2].count(2)

# give me the bigest number in array:
a = [1, 5, 8]
puts a.max

# give me the smallest number in array:
puts a.min

# we can use both and will give both values:
puts a.minmax

# to know if element belong to object enumberables:
puts a.include?(5)
puts a.member?(1)


