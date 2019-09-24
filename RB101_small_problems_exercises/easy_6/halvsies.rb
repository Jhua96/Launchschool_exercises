def halvsies(arr)
  if arr.length % 2 == 0
    [arr[0..(arr.length/2 - 1)],arr[arr.length/2..arr.length]]
  else
    [arr[0..(arr.length/2)], arr[(arr.length/2 + 1)..arr.length]]
  end
end

p halvsies([1, 2, 3, 4]) == [[1, 2], [3, 4]]
p halvsies([1, 5, 2, 4, 3]) == [[1, 5, 2], [4, 3]]
p halvsies([5]) == [[5], []]
p halvsies([]) == [[], []]