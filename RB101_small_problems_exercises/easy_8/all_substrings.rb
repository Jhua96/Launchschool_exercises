def substrings(str)
  new_arr = str.chars
  pushing_arr = []
  0.upto(new_arr.size - 1) do |val|
    pushing_arr << substrings_at_start(new_arr[val..(new_arr.size - 1)])
    pushing_arr.flatten!
  end
  pushing_arr
end

def substrings_at_start(arr)
  new_arr = []
  
  for num in (0..(arr.size - 1))
    new_arr << arr[0..num].join
  end
  new_arr
end

def palindromes(str)
  new_arr = []
  substrings(str).each {|val| new_arr << val if (val == val.reverse) && (val.length > 1)}
  new_arr
end
    
      
    


p substrings('abcde') == [
  'a', 'ab', 'abc', 'abcd', 'abcde', 
  'b', 'bc', 'bcd', 'bcde',
  'c', 'cd', 'cde',
  'd', 'de',
  'e'
]

p  palindromes('abcd') 
p palindromes('madam') == ['madam', 'ada']
p palindromes('hello-madam-did-madam-goodbye') == [
  'll', '-madam-', '-madam-did-madam-', 'madam', 'madam-did-madam', 'ada',
  'adam-did-mada', 'dam-did-mad', 'am-did-ma', 'm-did-m', '-did-', 'did',
  '-madam-', 'madam', 'ada', 'oo'
]
p palindromes('knitting cassettes') == [
  'nittin', 'itti', 'tt', 'ss', 'settes', 'ette', 'tt'
]