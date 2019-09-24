def print_in_box(str)
  length = str.size + 2
  
  puts "+#{'-' * length}+"
  puts "|#{' '* length}|"
  puts "| #{str} |"
  puts "|#{' '* length}|"
  puts "+#{'-' * length}+"
end

print_in_box('jkgkhgkhgkjhgkgovtfchds')