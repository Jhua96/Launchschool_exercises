def crunch(str)
  new_arr = str.chars
  final_arr =[]

  counter = 0
  new_arr.each do |letter| 
    final_arr << letter unless new_arr[counter] == new_arr[counter + 1]
    counter += 1
  end

  final_arr.join
end

def crunch2(str)
  new_arr = str.chars
  final_arr =[]
  counter = 0
  new_arr.each do |letter| 
    final_arr << letter if /#{letter}/.match(final_arr[counter + 1]) == nil
    p final_arr
    counter += 1
  end

  final_arr.join
end




p crunch2('ddaaiillyy ddoouubbllee') == 'daily double'
p crunch2('4444abcabccba') == '4abcabcba'
p crunch2('ggggggggggggggg') == 'g'
p crunch2('a') == 'a'
p crunch('') == ''