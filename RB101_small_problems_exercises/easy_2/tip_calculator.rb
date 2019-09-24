puts "what is the bill?"
bill = gets.chomp.to_i

puts "what is the tip percentage?"
tip_percent = gets.chomp.to_f / 100

tip = bill * tip_percent
total = bill + tip


puts "the tip is $#{tip.round(2)}"
puts "the total is $#{sprintf("%#.2f", total)}"

