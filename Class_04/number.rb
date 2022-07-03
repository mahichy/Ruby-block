numbers = [1, 2, 3, 4]

result = numbers.reduce(0) { |sum, number| sum + number }
puts result

result = numbers.reduce { |sum, number| sum + number }
puts result

result = numbers.reduce(:+) 
puts result

result = numbers.reduce(0, :+) 
puts result

result = numbers.reduce(:*) 
puts result


numbers = [2, 4, 6]

result = numbers.reduce { |sum, number| sum + number }
puts "total_result: #{result}"