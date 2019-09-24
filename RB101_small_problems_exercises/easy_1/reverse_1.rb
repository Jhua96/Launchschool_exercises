#START

#def reverse_sentence(string)
  # split string by space 
  # push to new string in reverse order

def reverse_sentence(str)
  new_str = []
  str.split.reverse_each {|x| new_str.push(x)}
  new_str.join(' ')
end

puts reverse_sentence('') == ''
puts reverse_sentence('Hello World') == 'World Hello'
puts reverse_sentence('Reverse these words') == 'words these Reverse'