def oddities(arr)
  arr.select.with_index {|_,idx| idx % 2 == 0}
end

def eventies(arr)
  arr.select.with_index {|_,idx| idx % 2 != 0}
end

def oddities2(arr)
  odd = []
  index = 0
  while index < arr.size
    odd << arr[index]
    index += 2
  end
  odd
end

def oddities3(arr)
  list = []
  for val in (0..arr.size)
    list << arr[val] if val % 2 == 0
  end
  list
end




p oddities3([2, 3, 4, 5, 6]) == [2, 4, 6]
p oddities2([1, 2, 3, 4, 5, 6]) == [1, 3, 5]
p oddities(['abc', 'def']) == ['abc']
p oddities([123]) == [123]
p oddities([]) == []

p eventies([1, 2, 3, 4, 5, 6]) == [2, 4, 6]