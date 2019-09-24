munsters_description = "The Munsters are creepy in a good way."

one = munsters_description.chars.each_with_index do |letter, i| 
      letter.upcase!
      if i == 0
        letter.downcase!
      elsif i == 4
        letter.downcase!
      end
    
    end.join


p one
puts munsters_description.capitalize
puts munsters_description.downcase
puts munsters_description.upcase