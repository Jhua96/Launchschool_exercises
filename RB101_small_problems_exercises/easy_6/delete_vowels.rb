def remove_vowels(arr)
  new_arr = []
  arr.each do |word|
    new_word = []
    word.chars.each do |letter| 
      new_word << letter unless ["a", 'e', 'i', 'o', 'u'].include?(letter.downcase)
    end
    new_arr << new_word.join
  end
  p new_arr
end

p remove_vowels(%w(abcdefghijklmnopqrstuvwxyz)) == %w(bcdfghjklmnpqrstvwxyz)
p remove_vowels(%w(green YELLOW black white)) == %w(grn YLLW blck wht)
p remove_vowels(%w(ABC AEIOU XYZ)) == ['BC', '', 'XYZ']
