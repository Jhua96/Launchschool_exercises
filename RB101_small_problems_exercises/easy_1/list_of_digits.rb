#START

# def digit_list(int)
  # turn int into string
  # split string
  # to_i each element
  # return array of elements

def digit_list(num)
  num.to_s.chars.map {|val| val.to_i}
end

puts digit_list(12345) == [1, 2, 3, 4, 5]     
puts digit_list(7) == [7]                     
puts digit_list(375290) == [3, 7, 5, 2, 9, 0] 
puts digit_list(444) == [4, 4, 4] 