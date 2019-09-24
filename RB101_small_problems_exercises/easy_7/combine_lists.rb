def interleave(arr1,arr2)
  new_arr = []
  for num in (0..(arr1.size - 1))
    new_arr << arr1[num]
    new_arr << arr2[num]
  end
  new_arr
end

def interleave2(arr1,arr2)
  arr1.zip(arr2).flatten
end

p interleave([1, 2, 3], ['a', 'b', 'c']) == [1, 'a', 2, 'b', 3, 'c']