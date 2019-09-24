def titleize(str)
  str = str.split
  str.map! {|word| word.capitalize!}.join(" ")
end

words = "the flintstones rock"

words = titleize(words)
p titleize(words)
p words