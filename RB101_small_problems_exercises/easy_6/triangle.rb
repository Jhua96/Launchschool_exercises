def triangle_main(num)
  (num + 1).times {|x| puts "#{' ' * (num - x + 1)}#{'*' * x}"}
end

def triangle(num,corner=4)
  case corner
  when 4
    (num + 1).times {|x| puts "#{' ' * (num - x + 1)}#{'*' * x}"}
  when 3
    (num + 1).times {|x| puts "#{'*' * x}"}
  when 2
    (num + 1).times {|x| puts "#{' ' * (x)}#{'*' * (num - x)}"}
  when 1
    (num + 1).times {|x| puts "#{'*' * (num - x)}"}
  end
end




triangle(5,1)
triangle(5,2)
triangle(5,3)
triangle(5)