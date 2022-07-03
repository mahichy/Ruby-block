class Order
	TAX_TABLE = { "CO" => 0.02, "MT" => 0.00, "AZ" => 0.04 }

	attr_reader :email, :total, :state, :status

	def initialize(email, state, total, status=:pending)  
		@email = email
		@state = state
		@total = total
		@status = status
	end	

	def tex
		total * TAX_TABLE[state]
	end

	def to_s
		"#{email} #{state}: #{total} - #{status}"
	end
end

orders = []
orders << Order.new("customer1@example.com", "MT", 300)
orders << Order.new("customer2@example.com", "AZ", 400, :complete)
orders << Order.new("customer3@example.com", "CO", 200)
orders << Order.new("customer4@example.com", "CO", 100, :complete) 

puts orders

puts "Big Orders:"
Big_orders = orders.select { |o| o.total >= 300 }
puts Big_orders

puts "Small Orders:"

small_orders = orders.reject { |o| o.total >= 300 }
puts small_orders

pending_orders = orders.any? { |o| o.status == :pending  }
puts pending_orders

order = orders.detect { |o| o.status == :pending}
puts order

Pending_orders, Completed_orders = orders.partition { |o| o.status == :pending }

puts "Pending:"
puts Pending_orders

puts "complete:"
puts Completed_orders

Big_order, Small_order = orders.partition { |o| o.total >= 300 }

puts "Big Orders:"
puts Big_orders

puts "Small_orders:"
puts small_orders

puts "Newsletter email:"
puts "Upcase:"
emails = []
orders.each { |o| emails << o.email.downcase }
p emails

puts "Upcase:"
emails = []
orders.each { |o| emails << o.email.upcase }
p emails


puts "Reverse:"
emails = []
orders.each { |o| emails << o.email.reverse }
p emails

puts "Map:"

emails = orders.map { |o| o.email.downcase }
puts emails


puts "Taxes:"
co_orders = orders.select { |o| o.state == "CO"}
co_taxes = co_orders.map { |o| o.tex }
puts co_taxes

puts "TaxMap:"
co_taxes = orders.select { |o| o.state == "CO"}.map { |o| o.tex }
puts co_taxes

sum = 0
orders.each { |order| sum += order.total }
puts "total sales: $#{sum}"

sum = 0
orders.each { |order| sum += order.total }
puts "total sales: $#{sum}"


# total_tex = orders.reduce(0) { |total, order| total + order.tex }
total_tax = orders.map { |o| o.tex }.reduce(:+)
puts "Total Tax: $#{total_tax}" 