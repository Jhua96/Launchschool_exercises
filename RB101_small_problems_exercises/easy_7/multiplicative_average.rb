def show_multiplicative_average(arr)
  sprintf("%3.3f",arr.inject(:*).to_f / arr.size)
end

p show_multiplicative_average([3, 5])
p show_multiplicative_average([2, 5, 7, 11, 13, 17])
p show_multiplicative_average([6])