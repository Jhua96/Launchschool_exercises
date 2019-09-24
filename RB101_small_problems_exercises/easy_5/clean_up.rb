def cleanup(str)
  counter = 0
  working_str = replace_with_space(str)
  new_str = []
  loop do
    new_str << working_str[counter] if !((working_str[counter] == " ") && (working_str[counter + 1] == " "))
    counter += 1
    break if counter >= str.size 
  end
  
  new_str.join
end

def replace_with_space(str)
  str.chars.map do |letter|
    letter = " " if !(letter =~ /[a-z]/)
    letter
  end
end

p replace_with_space(" *s *s     ")
p cleanup(" *s *s    ")