class Person
    def initialize (name)
        @name = name
    end
=begin
    def name
        @name 
    end
    
    def name= (name)
        @name = name 
    end
=end
# we can use accessor method alternativly
attr_accessor :name
end

p = Person.new ("David")
p.name = "Bob"
puts p.name