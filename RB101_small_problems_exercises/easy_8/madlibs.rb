def prompt(str)
  puts str
end

prompt("Enter a noun:")
noun = gets.chomp

prompt("Enter a verb:")
verb = gets.chomp

prompt("Enter an adjective:")
adjective = gets.chomp

prompt("Enter an adverb:")
adverb = gets.chomp

prompt("do you #{verb} your #{adjective} #{noun} #{adverb}? That's hilarious!")

