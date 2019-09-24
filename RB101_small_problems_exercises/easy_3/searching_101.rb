numbers = []

6.times do |num|
  puts "Enter the #{num + 1} number:"
  numbers << gets.chomp.to_i
end

last = numbers.pop

if numbers.include?(last)
  puts "The number #{last} appears in #{numbers}"
else
  puts "The number #{last} does not appear in #{numbers}"
end
