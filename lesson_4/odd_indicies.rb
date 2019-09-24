def double_odd_indicies(arr, mult=2)
  doubled_odd = []
  counter = 0

  loop do 
    break if counter == arr.size

    current_number = arr[counter]
    current_number *= mult if counter % 2 != 0
    doubled_odd << current_number

    counter += 1
  end
  doubled_odd
end

nums = [0,1,2,3,4,5,6,7]

p double_odd_indicies(nums, 4)