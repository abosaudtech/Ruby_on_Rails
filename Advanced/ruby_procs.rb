my_proc = Proc.new { puts "hello world"}
my_proc.call

my_proc = Proc.new { |name| puts "Hello #{name}"}
my_proc.call "Ahmad"

my_proc = Proc.new do |name|
    puts "Hello #{name}"
end
my_proc.call "Ahmad"