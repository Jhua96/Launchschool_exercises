puts "enter the length of the room in meters"
length = gets.chomp.to_i

puts "enter the width of the room in meters"
width = gets.chomp.to_i

puts "The area of the toom is #{(length * width).to_f} square meters (#{(length * width) * 10.7639} square feet)"