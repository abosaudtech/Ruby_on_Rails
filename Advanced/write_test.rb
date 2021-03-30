#io = File.open('./a.text', 'w')
#io.puts 'this is a new line'
#io.close


# Or we can write this code to close the file automatically when code end:
File.open('./Advanced/a.text', 'w') do |io|
    io.puts 'this is a new line'
end
