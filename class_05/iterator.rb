def three_times
  yield
  yield
  yield
end

three_times { puts "Ho!" }


def three_times
  yield(1)
  yield(2)
  yield(3)
end

three_times do |number|
  puts "#{number} situp"
  puts "#{number} pushup"
  puts "#{number} chinup"
end




