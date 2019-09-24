puts "Please write word or multiple words:"

words = gets.chomp.delete(' ')

puts "There are #{words.length} characters in \"#{words}\"."