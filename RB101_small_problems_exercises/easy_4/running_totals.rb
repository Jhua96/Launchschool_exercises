def running_total(arr)
  new_arr = []

  arr.each do |num|
    if new_arr.empty? 
      new_arr << num
    else
      new_arr << new_arr.last + num
    end
  end
  new_arr
end

def running_total2(arr)
  new_arr = []
  total = arr.inject() do |sum, n| 
    new_arr << sum
    sum + n
    
  end
  new_arr << total if total != nil
  new_arr 
end

p running_total2([2, 5, 13]) == [2, 7, 20]
p running_total2([14, 11, 7, 15, 20]) == [14, 25, 32, 47, 67]
p running_total2([3]) == [3]
p running_total2([]) == []