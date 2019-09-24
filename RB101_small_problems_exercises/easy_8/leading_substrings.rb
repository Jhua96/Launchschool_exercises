def substrings_at_start(str)
  new_arr = []
  tmp_str = str.chars
  for num in (0..(tmp_str.size - 1))
    new_arr << tmp_str[0..num].join
  end
  new_arr
end

p substrings_at_start('abc')
p substrings_at_start('a') == ['a']
p substrings_at_start('xyzzy') == ['x', 'xy', 'xyz', 'xyzz', 'xyzzy']