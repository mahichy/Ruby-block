class Array
	def my_each
		i = 0
		while i < self.size
			yield self[i]
			i += 1
		end
	end
end













weekdays = [ 'Monday', 'Tuesday', 'Wednesday', 'Thursday', 'Friday']

weekdays.my_each { |day| puts day}