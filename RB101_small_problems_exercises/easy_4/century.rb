def century(year)
  new_year = (year / 100) + 1
  new_year -= 1 if year % 100 == 0
  
  "#{new_year}#{suffix(new_year)}"
end

def suffix(year)
  return "th" if [11,12,13].include?(year % 100)
  last = year % 10
  case last
  when 1
    "st"
  when 2
    "nd"
  when 3
    "rd"
  else
    "th"
  end
end

p century(2000) == '20th'
p century(2001) == '21st'
p century(1965) == '20th'
p century(256) == '3rd'
p century(5) == '1st'
p century(10103) == '102nd'
p century(1052) == '11th'
p century(1127) == '12th'
p century(11201) == '113th'

