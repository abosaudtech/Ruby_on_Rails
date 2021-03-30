number = 0
attempts = 0

while number < 6
    number = rand(1..6)
    puts "You rolled #{number}"
    attempts += 1
end

puts "It took you #{attempts} attempts to roll number 6"