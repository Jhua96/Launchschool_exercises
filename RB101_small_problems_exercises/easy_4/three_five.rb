def multisum(num)
  total = 0
  (num + 1).times do |val|
    total += val if multiple?(val)
  end
  total
end

def multiple?(val)
  (val % 3 == 0) || (val % 5 == 0)
end

def multisum2(num)
  (1..num).inject(0) {|sum, n| multiple?(n) ? sum + n : sum + 0}
end
  

p multisum2(3) == 3
p multisum2(5) == 8
p multisum2(10) == 33
p multisum2(1000) == 234168