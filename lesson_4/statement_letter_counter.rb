statement = "The Flintstones Rock"

letter_count = {}

statement.chars.each do |letter|
  if letter_count.has_key?(letter)
    letter_count[letter] += 1
  else
    letter_count[letter] = 1
  end
end

p letter_count
