name = "jim"

def change_name(name)
  puts name.object_id
  name = "bob"
  puts name.object_id
end


def change(name)
  name.clear
  name << "clear"
end

puts name


puts change(name)
puts name