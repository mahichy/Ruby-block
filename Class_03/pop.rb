desserts = { "chocolate" => 1.00, "vanilla" => 0.75, "cinnamon" => 1.25 }

desserts.each do |key, value|
	puts " #{value * 2} for a cup of #{key}"
end

# $2.0 for a cup of chocolate.
# $1.5 for a cup of vanilla.
# $2.5 for a cup of cinnamon.