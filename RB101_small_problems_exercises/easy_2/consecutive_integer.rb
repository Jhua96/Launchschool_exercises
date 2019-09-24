puts "Please enter an integer greater than 0:"

num = gets.chomp.to_i

puts "Enter 's' to compute the sum, 'p' to compute the product."

operation = gets.chomp

#sum = 0
if operation == "s"
  #sum = num
  #num.times {|val| sum += val}
  puts (1..num).inject {|s,n| s + n}
elsif operation == "p"
  #sum = num
  #num.times {|val| sum *= val unless val == 0} 
  puts (1..num).inject {|s,n| s * n} 
end
