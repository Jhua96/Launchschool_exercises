puts "what is your age?"

age = gets.chomp.to_i

puts "at what age would you like to retire?"

retire = gets.chomp.to_i
current_year = Time.now.year
puts "It's #{current_year}. You will retire in #{2019 + retire - age}"
puts "You have only #{retire - age} years of work to go"