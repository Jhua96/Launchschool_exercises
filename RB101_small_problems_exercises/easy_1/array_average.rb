def average(arr)
  arr.sum / arr.length
end

puts average([1, 5, 87, 45, 8, 8]) == 25
puts average([9, 47, 23, 95, 16, 52]) == 40

def sum(num)
  total = 0
  num.to_s.chars.each {|val| total += val.to_i}
  total
end

puts sum(23) == 5
puts sum(496) == 19
puts sum(123_456_789) == 45
