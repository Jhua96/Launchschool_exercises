def snake(str)
  words = str.split
  current_word = 1

  loop do
    words[current_word].downcase!

    current_word += 1
    break if current_word >= words.size
  end

  words.join('_')
end

words = ['f','f','f']

new_word = words.select {|val| val == "g"}

new_int = words.map {|val| }
p new_int

new_word = words.select do |val|
  puts val.object_id
  val == 'f'
end
p words
p words.object_id
p new_word
p new_word.object_id

new_hash = {a: 4, b: 5, c: 6}

fire = new_hash.map {|key, val| val + 2}
p fire

water = ['a', 'b', 'c'].select do |item|
  puts item
end

p water


wind = {a: 1, b: 2, c: 3, d: 4, e: 5}.each do |_, num|
  plus_one = num + 1
  puts "#{num} plus 1 is #{plus_one}"
end
# => {:a => 1, :b => 2, :c => 3, :d => 4, :e => 5}

p wind

earth = [1, 2, 3, 4, 5].each do |num|
  num + 1
end

p earth

flavors = ['chocolate', 'strawberry', 'mint', 'vanilla']
flav = flavors.reject { |flavor| flavor == "mint"}
p flav