#START

#def string(int)
  # iterator iterates int time
    # adds "1" to string if int % 2 == 0
    # adds "0" to string if int % 2 != 0
  #return string

def stringy(num, val=1)
  str = ''
  if val == 1
    num.times do |x|
      str += "1" if x % 2 == 0
      str += "0" if x % 2 != 0
    end
  else
    num.times do |x|
      str += "0" if x % 2 == 0
      str += "1" if x % 2 != 0
    end
  end
  str
end

puts stringy(6,0) == '101010'
puts stringy(9) == '101010101'
puts stringy(4) == '1010'
puts stringy(7) == '1010101'

