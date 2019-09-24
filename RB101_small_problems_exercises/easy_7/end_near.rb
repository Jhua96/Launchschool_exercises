def penultimate(str)
  new_str = str.split
  new_str[new_str.size - 2]
end

p penultimate('last word') 
p penultimate('Launch School is great!') == 'is'

def middle_phrase(str)
  return "not a str" unless str.is_a? String
  new_str = str.split
  if new_str.size < 3
    return "Too small"
  elsif new_str.size % 2 != 0
    return new_str[(new_str.size / 2)]
  else
    return new_str[(new_str.size / 2) - 1]
  end
end

p middle_phrase("The goat good")
p middle_phrase("The fat goat good")
p middle_phrase(3)