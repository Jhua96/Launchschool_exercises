def reverse!(arr)
  return [] if arr == []
  new_arr = []
  counter = -1
  loop do 
    new_arr << arr[counter]
    counter -= 1
    break if counter.abs == arr.size + 1 || counter.abs == 10
  end
  second_counter = 0
  loop do
    arr[second_counter] = new_arr[second_counter]
    second_counter += 1
    break if second_counter == arr.size || second_counter == 10
  end
  arr
end

list = [1,2,3,4]
result = reverse!(list)
p result == [4, 3, 2, 1]
p list == [4, 3, 2, 1]
p list.object_id == result.object_id

list = %w(a b e d c)
p reverse!(list) == ["c", "d", "e", "b", "a"]
p list == ["c", "d", "e", "b", "a"]

list = ['abc']
p reverse!(list) == ["abc"]
p list == ["abc"]

list = []
p reverse!(list) == []
p list == []