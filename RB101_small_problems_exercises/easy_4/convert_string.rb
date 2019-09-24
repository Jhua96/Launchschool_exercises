def string_to_integer(str)
  arr = []
  
  number_hash = {"0" => 0, "1" => 1, "2" => 2, "3" => 3, "4" => 4, "5" => 5, "6" => 6, "7" => 7, "8" => 1, "9" => 1,}
  str.chars.each {|num| arr << number_hash[num]}
  
  total = arr.inject {|sum, n| sum*10 + n}
  
end

p string_to_integer('4321') == 4321
p string_to_integer('570') == 570

def hexadecimal_to_integer(str)
  hexidecimal = {'a' => 10, 'b' => 11, 'c' => 12, 'd' => 13, 'e' => 14, 'f' => 15}
  counter = str.length - 1
  sum = 0
  str.downcase.chars.each do |letter|
    num = letter
    if 'abcdef'.include?(letter)
      num = hexidecimal[letter]
    else
      num = num.to_i
    end
    sum += num * (16**counter)
    counter -= 1
  end
  p sum
end

def string_to_signed_integer(working_str)
  sign = ""
  str = working_str
  if str[0] == ("-") || str[0] == ("+")
    sign = str[0]
    str.delete!(str[0])
  end
  integer = string_to_integer(str)
  return integer * -1 if sign == '-'
  integer
end

p hexadecimal_to_integer('4D9f') == 19871

p string_to_signed_integer('4321') == 4321
p string_to_signed_integer('-570') == -570
p string_to_signed_integer('+100') == 100
