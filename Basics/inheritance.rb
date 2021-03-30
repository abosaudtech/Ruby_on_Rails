class Animal
    def make_sound
        raise "Cannot make_sounds in Animal class"
    end
    def walk
        puts "#{self.class.name} is walking"
    end
end
class Dog < Animal
    def make_sound 
        puts "Woof!"
    end
end
class Cat < Animal 
    def make_sound 
        puts "Meow"
    end
    def walk 
        super
        puts "Tails move too"
    end
end

max = Dog.new
max.walk 
max.make_sound 

jax = Cat.new
jax.walk 
jax.make_sound

