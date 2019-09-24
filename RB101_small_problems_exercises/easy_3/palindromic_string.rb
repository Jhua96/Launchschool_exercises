def palindrome?(string)
  reverse = ''
  counter = string.length - 1
  while counter > -1
    reverse << string[counter]
    counter -= 1
  end
  reverse == string
end

def real_palindrome?(string)
  new_string = string.downcase.delete(' ').delete(',').delete('\'')
  palindrome?(new_string)
end

def palindromic_number?(int)
  new_int = int.to_s
  palindrome?(new_int)
end

p palindrome?('madam') == true
p palindrome?('Madam') == false          # (case matters)
p palindrome?("madam i'm adam") == false # (all characters matter)
p palindrome?('356653') == true

p real_palindrome?('madam') == true
p real_palindrome?('Madam') == true           # (case does not matter)
p real_palindrome?("Madam, I'm Adam") == true # (only alphanumerics matter)
p real_palindrome?('356653') == true
p real_palindrome?('356a653') == true
p real_palindrome?('123ab321') == false

p palindromic_number?(34543) == true
p palindromic_number?(123210) == false
p palindromic_number?(22) == true
p palindromic_number?(5) == true