def swap(str)
  str.split.each do |word| 
    word.chars
    temp = word[0]
    word[0] = word[word.size - 1]
    word[word.size - 1] = temp
  end.join(" ")
end

p swap('Oh what a wonderful day it is') == 'hO thaw a londerfuw yad ti si'
p swap('Abcde') == 'ebcdA'
p swap('a') == 'a'