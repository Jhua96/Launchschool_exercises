CONSTINANTS = ('a'..'z').to_a.select {|letter| !%w(a e i o u).include?(letter)}

def repeater(str)
  new_str = []
  str.chars.each do |letter|
    new_str << letter * 2 if CONSTINANTS.include?(letter.downcase)
    new_str << letter unless CONSTINANTS.include?(letter.downcase) 
  end
  new_str.join
end

p repeater('Hello')
p repeater("Good job!") == "GGoooodd  jjoobb!!"
p repeater('') == ''

p repeater('String') == "SSttrrinngg"
p repeater("Hello-World!") == "HHellllo-WWorrlldd!"
p repeater("July 4th") == "JJullyy 4tthh"
p repeater('') == ""