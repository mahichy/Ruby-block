scores = [83, 71, 92, 64, 98, 87, 75, 69]

High_scores = scores.select { |score| score > 80 }
puts High_scores

low_scores = scores.reject { |score| score > 80 }
puts low_scores

puts "Any:"
puts scores.any? { |score| score < 70 }

puts scores.detect { |score| score < 70 }

puts "Total:"
total = scores.reduce(0) { |sum, score| sum + score }
puts "total_scores: $#{total}"

puts "Total_2:"
total = scores.reduce(0, :+)
puts total

puts "evanOdds:"
evens, odds = scores.partition { |score| score.even? }

puts "Evens:"
p evens

puts "Odds:"
p odds

