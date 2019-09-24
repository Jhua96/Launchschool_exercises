def integer_to_string(num)
  divisor = 1
  string = []
  num_length_check = num
  loop do 
    num_length_check /= 10
    int = num / divisor % 10
    string.unshift(int)
    break if num_length_check == 0
    divisor *= 10
  end
  string.join
end

def signed_integer_to_string(num)
  int = num.abs
  str = integer_to_string(int)
  if int == 0
    '0'
  elsif int == num
    "+" + str
  else
    '-' + str
  end
end

def signed_integer_to_string2(number)
  int = integer_to_string(number.abs)
  case number <=> 0
  when -1 then "-#{int}"
  when +1 then "+#{int}"
  else         int
  end
end

p integer_to_string(4321) == '4321'
p integer_to_string(0) == '0'
p integer_to_string(5000) == '5000'

p signed_integer_to_string2(4321) == '+4321'
p signed_integer_to_string2(-123) == '-123'
p signed_integer_to_string2(0) == '0'