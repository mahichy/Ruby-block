class Flyer
	attr_reader :name, :email, :miles_flown

	def initialize(name, email, miles_flown) 
		@name = name
		@email = email
		@miles_flown = miles_flown
	end

	def to_s
		"#{name} (#{email}): #{miles_flown}"
	end
end

flayers = []

1.upto(5) do |number| 
	flayers << Flyer.new("Flayer #{number}", "Flayer#{number}@example.com", number * 1000 )
end

puts flayers

flayers.each do |flyer|
	puts "#{flyer.name} - #{flyer.miles_flown} miles "
end

total = 0
flayers.each do |flyer|
	total += flyer.miles_flown
end
puts "total miles_flown: #{total}"






