# 3.times {|n| puts "#{n} Echo!" }
# 1.upto(3) {|n| puts "#{n} Echo!" }

# def three_times
# 	yield(0)
# 	yield(1)
# 	yield(2)
# end


# three_times {|n| puts "#{n} Echo!" }


# def three_times
# 	i = 0
# 	while i < 3
# 		yield i
# 		i += 1
# 	end 
# end

# three_times {|n| puts "#{n} Echo!" }

# class Integer
# 	def n_times 
# 		i = 0
# 		while i < self
# 			yield i
# 			i += 1
# 		end 
# 	end
# end

# 10.n_times {|n| puts "#{n} Echo!" }



class Integer
	def times 
		i = 0
		while i < self
			puts "Yielding #{i}....."
			yield i
			i += 1
		end 
	end
end

10.times {|n| puts "#{n} Echo!" }