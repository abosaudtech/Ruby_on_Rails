begin
    File.read 'my_home_work.txt'
rescue
    puts 'file not found'
end