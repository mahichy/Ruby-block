# 3.times do 
# 	puts "Runing Blocks"
# end

# custome

# def run_my_block
# 	puts "Starting method...."
# 	yield
# 	puts "Back in method."		
# end

# run_my_block do 
# 	puts "Runing Block!"
# end

# run_my_block do 
# 	puts "Time is now #{Time.now}"
# end

# def roll
# 	puts "Starting method..."
# 	yield
# 	yield
# 	yield
# 	puts "Back in method."
# end

# def roll
# 	puts "Starting method..."
# 	yield "Larry"
# 	puts "Back in method."
# end

# roll do |name| 
# 	number = rand(1..6)
# 	puts "#{name} rolled a #{number}!"
# end


# def roll
# 	puts "Starting method..."
# 	number = rand(1..6)
# 	yield "Larry", number
# 	yield "Moe", number
# 	puts "Back in method."
# end

# roll do |name, number| 
# 	puts "#{name} rolled a #{number}!"
# end


def roll
	puts "Starting method..."
	number = rand(1..6)
	result = yield("Larry", number)
	puts "The block resturned #{result}."
end

roll do |name, number| 
	puts "#{name} rolled a #{number}!"
	number * 2
end