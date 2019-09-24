def word_sizes(str)
  sizes = {}
  str.split.each do |word|
    length = count(word)
    if sizes.has_key?(length)
      sizes[length] += 1
    else
      sizes[length] = 1
    end
  end
  sizes
end

def count(str)
  counter = 0
  letters = ('a'..'z').to_a
  str.chars.each {|letter| counter += 1 if letters.include?(letter.downcase)}
  counter
end

p word_sizes('Four score and seven.') == { 3 => 1, 4 => 1, 5 => 1, 6 => 1 }
p word_sizes('Hey diddle diddle, the cat and the fiddle!') == { 3 => 5, 6 => 1, 7 => 2 }
p word_sizes("What's up doc?") == { 6 => 1, 2 => 1, 4 => 1 }
p word_sizes('') == {}
puts "+++++++++++++++++"
p word_sizes('Four score and seven.') == { 3 => 1, 4 => 1, 5 => 2 }
p word_sizes('Hey diddle diddle, the cat and the fiddle!') == { 3 => 5, 6 => 3 }
p word_sizes("What's up doc?") == { 5 => 1, 2 => 1, 3 => 1 }
p word_sizes('') == {}