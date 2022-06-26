name = "Curly"
number = 100
temp = Math::PI / 4 

3.times do |number; temp|
	name = "moe"
	temp = 98.4
	puts "#{number} Howdy, #{name} #{temp}!"
end

puts name
puts number
puts temp