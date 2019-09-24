def multiply_list(arr1,arr2)
  new_arr = []
  for num in (0..(arr1.size - 1))
    new_arr << arr1[num] * arr2[num]
  end
  new_arr
end


def multiply_list2(arr1,arr2)
  #new_arr = [] 
  #arr1.zip(arr2) {|arr| new_arr << arr.inject(:*)}
  #new_arr

  new_arr = arr1.zip(arr2).map {|val| val.inject(:*)}
end

p multiply_list2([3, 5, 7], [9, 10, 11])
