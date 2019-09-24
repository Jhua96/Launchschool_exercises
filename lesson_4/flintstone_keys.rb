def index_to_key(arr)
  name_hash = {}
  arr.each_with_index {|val, index| name_hash[val] = index}
  puts name_hash
end




flintstones = ["Fred", "Barney", "Wilma", "Betty", "Pebbles", "BamBam"]

puts index_to_key(flintstones)