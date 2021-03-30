# Structs is like classes but it easy and fast
# at creating and we use it hard to create classes
# and it has spectial properties and it different
# to another languages

Student = Struct.new(:name, :grade)
# we create struct for Student with S capital
ahmad = Student.new('ahmad', 90)
# now we have ahmad and he is object in struct Student
puts ahmad.name
puts ahmad.grade

# you must know that is Student is constant not vaiable
# because first letter is capital.
# we can do it like this:
puts ahmad[:name]
puts ahmad[:grade]

# and instead of doing:
students = []
puts students.push Student.new('ahmad', 90)
puts students.push Student.new('muhammad', 85)

# we can use map like this:
puts students.map(&:name)

# and it similar to:
puts students.map { |s| s.name }

# back to structs:
class Student 
    attr_accessor :name 
    attr_accessor :grade
end

# what if I want to add more details like some
# method to the struct I made?:
Students = Struct.new(:name, :grade) do
    def info
        "#{name} : #{grade}"
    end
end
ahmaad = Students.new('ahmad', 90)
puts ahmaad.info

# let us see whats methods available for structs:
# with method each we can rotate on all field that
# we pass to the object when we create it.

ahmaad.each do |prop|
    puts prop
end # => ahmad 90

# how to know that which field for this values:
# we can convert objects in structs to array with 
# method to_a for example:
puts ahmaad.to_a 

