def say_hi(name = "Unknown")
    puts "hi #{name}"
end

def say(name, message)
    puts "#{name}: #{message}"
end

say 'Muhammad', 'Hi'


def says(message, as:)
    puts "[#{as}]: #{message}"
end

says 'Hi', as: 'Mohammad'