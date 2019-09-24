UPCASE = ('A'..'Z').to_a
DOWNCASE = ('a'..'z').to_a


def swapcase(str)
  new_str = str.chars.each do |val|
              if DOWNCASE.include?(val)
                val.upcase!
              elsif UPCASE.include?(val)
                val.downcase! 
              end
            end
  new_str.join
end


puts DOWNCASE
p swapcase('CamelCase') == 'cAMELcASE'
p swapcase('Tonight on XYZ-TV') == 'tONIGHT ON xyz-tv'