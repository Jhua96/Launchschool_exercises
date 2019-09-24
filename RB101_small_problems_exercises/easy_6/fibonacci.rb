def find_fibonacci_index_by_length(num)
  idx = 1
  start = [1,1]
  while true
    start << start[idx] + start[idx - 1]
    idx += 1
    break if start[idx].to_s.size == num
  end
  idx += 1
  p idx
end

p find_fibonacci_index_by_length(2) == 7          # 1 1 2 3 5 8 13
p find_fibonacci_index_by_length(3) == 12         # 1 1 2 3 5 8 13 21 34 55 89 144
p find_fibonacci_index_by_length(10) == 45
p find_fibonacci_index_by_length(100) == 476
p find_fibonacci_index_by_length(1000) == 4782
p find_fibonacci_index_by_length(10000) == 47847
