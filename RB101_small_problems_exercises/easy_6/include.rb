def include2?(arr, input)
  arr.each {|val| return true if val == input}
  false
end

p include2?([1,2,3,4,5], 3) == true
p include2?([1,2,3,4,5], 6) == false
p include2?([], 3) == false
p include2?([nil], nil) == true
p include2?([], nil) == false