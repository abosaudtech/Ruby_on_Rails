puts 'Hi'

t = Thread.new do
    sleep 0.1
    puts 'inside thread'
end
t.join
puts 'outside thread'

