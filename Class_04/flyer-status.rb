class Flyer
  attr_reader :name, :email, :miles_flown
  attr_accessor :status

  def initialize(name, email, miles_flown, status=:bronze)
    @name = name
    @email = email
    @miles_flown = miles_flown
    @status = status
  end

  def to_s
    "#{name} (#{email}): #{miles_flown} - #{status}"
  end
end

flyers = []
flyers << Flyer.new("Larry", "larry@example.com", 4000, :platinum)
flyers << Flyer.new("Moe", "moe@example.com", 1000)
flyers << Flyer.new("Curly", "curly@example.com", 3000, :gold)
flyers << Flyer.new("Shemp", "shemp@example.com", 2000)

puts "Big_frequent_flyers:"
frequent_flyers = flyers.select { |flayer| flayer.miles_flown >= 3000 }
puts frequent_flyers

puts "Small_frequent_flayers:"
infrequent_flyers = flyers.reject { |flayer| flayer.miles_flown >= 3000 }
puts infrequent_flyers

puts "platinum:"
platinum = flyers.any? {|flayer| flayer.status == :platinum}
puts platinum

puts "First_bronze_flyer:"
first_bronze_flyer = flyers.detect { |flayer| flayer.status == :bronze}
puts first_bronze_flyer

platinum_flyers, other_flyers = flyers.partition { |flayer| flayer.status == :platinum}

puts "platinum_flyers:"
puts platinum_flyers

puts "other_flyers:"
puts other_flyers

puts "Map:"
name_tags = flyers.map { |flyer| "#{flyer.name} (#{flyer.status.upcase})"}
puts name_tags

puts "KMS:"
totals_in_kms = flyers.map { |flyer| flyer.miles_flown * 1.6 }
puts totals_in_kms

puts "Miles:"
total_miles_flown = flyers.reduce(0) { |sum, flyer| sum + flyer.miles_flown }
puts "Total miles in flown: #{total_miles_flown}"