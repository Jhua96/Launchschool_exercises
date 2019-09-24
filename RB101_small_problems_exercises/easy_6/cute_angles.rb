#START

#GET MINUTES
# => val = num % int num * 100
#GET SECONDS
# => val * 100
#SET THREE VARIABLES
# => degrees = num.to_i
# => minutes = val % 100
# => seconds = minutes * 100
#SET FORMAT
#RETURN STRING

def dms(num)
  if num > 360
    num = num % 360
  elsif num < 0
    num = 360 - (num.abs % 360)
  end
  degree = num.to_i
  minutes = 0
  seconds = 0
  if degree != 0
    minutes = num % num.to_i * 60
    if minutes != 0
      seconds = minutes % minutes.to_i * 60
    end
  end
  
  %(#{degree}\xC2\xB0#{sprintf("%02d", minutes)}'#{sprintf("%02d", seconds)}\")
end

puts dms(-76.73)
p dms(400) == %(40°00'00")
p dms(-40) == %(320°00'00")
p dms(-420) == %(300°00'00")
