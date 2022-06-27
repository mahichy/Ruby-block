cards = ["Jack", "Queen", "King", "Ace", "Joker"]

# cards.each do |day|
# 	puts day.upcase
# end

cards.each { |day| puts day.upcase }

# cards.each do |card|
# 	puts "#{card.upcase} - #{card.length }"
# end

cards.each { |card| puts "#{card.upcase} - #{card.length} "}

cards.shuffle.each { |card| puts "#{card.upcase} - #{card.length} "}

cards.reverse.each { |card| puts "#{card.upcase} - #{card.length} "}

scores = {"Larry" => 10, "Moe" => 8, "Curly" => 12}

scores.each do |name, number|
	puts "#{name} scored a #{number}!"
end