def center_of(str)
  new_str = str.chars
  return new_str[(new_str.size/2 - 1)..(new_str.size/2)].join if str.length % 2 == 0
  new_str[new_str.size/2]
end

p center_of('I love ruby') == 'e'
p center_of('Launch School') == ' '
p center_of('Launch') == 'un'
p center_of('Launchschool') == 'hs'
p center_of('x') == 'x'