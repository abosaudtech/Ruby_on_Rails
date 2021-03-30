class Person 
    attr_accessor :name, :age

    def initialize(name, age)
        @name = name
        @age = age
    end

    def change(n, a)
        self.name = n
        self.age = a 
    end

    def show_info
        puts "#{self.name} is #{self.age}"
    end
end

p = Person.new("David", 28)
p.change("Bob", 42) #this change David to Bob
p.show_info