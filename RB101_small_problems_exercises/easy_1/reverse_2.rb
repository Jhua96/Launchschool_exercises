#START

# def reverse_words(string)
  # seperate each word in string
  # if string length > 4
    # reverse the order of each char

def reverse_words(str)
  new_str = []
  str.split.each do |word|
    new_str.push(word.chars.reverse.join) if word.length > 4
    new_str.push(word) if word.length < 5
  end
  new_str.join(" ")
end

puts reverse_words('Professional')          # => lanoisseforP
puts reverse_words('Walk around the block') # => Walk dnuora the kcolb
puts reverse_words('Launch School')   