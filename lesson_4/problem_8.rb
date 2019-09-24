numbers = [1, 2, 3, 4]
numbers.each do |number|
  p number
  numbers.shift()
end

numbers = [1, 2, 3, 4]
numbers.each do |number|
  p number
  numbers.pop(1)
end