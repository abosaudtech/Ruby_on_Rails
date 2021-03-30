settings = {
    system: {
        sound: {
            speaker_volume: 15
        }
    }
}
puts settings[:system][:sound][:speaker_volume]
# if we print hash not exist in  our code will give empty:
puts settings[:system][:sound][:microphone_volume] 
# in code below output error because we order brightness after nill:
#puts settings[:system][:screen][:brightness]

# we can solve it by:
=begin
value = if settings[:system][:screen]
    settings[:system][:screen][:brightness]
else
    nil 
end

puts value
=end
# if you don't want write all this by using the dig method:
puts settings.dig(:system, :screen, :brightness)
puts settings.dig(:system, :sound, :speaker_volume)
