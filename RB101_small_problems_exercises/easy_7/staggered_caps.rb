
def staggered_case(str,start=-1,previous=false)
  index = start
  str.downcase.chars.map do |val|
    index += 1 if val.match(/[a-z]/) && previous == false
    index += 1 if previous
    if index % 2 == 0 
      val.upcase
    else
      val
    end
  end.join
end

p staggered_case('I Love Launch School!',0)
p staggered_case('ALL_CAPS',-1,true) == 'AlL_CaPs'
p staggered_case('ignore 77 the 444 numbers') == 'IgNoRe 77 ThE 444 NuMbErS'


p staggered_case('I Love Launch School!',-1,true) == 'I lOvE lAuNcH sChOoL!'
p staggered_case('ALL CAPS') == 'AlL cApS'
puts staggered_case('ignore 77 the 444 numbers') 

