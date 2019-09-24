#START

#def count_occurrences(arr)
  # make arr have only uniq elements
  # each that arr on original arr
  # each iteration count the instances of that object

def count_occurrences(vehicles)
  vehicles.map(&:downcase).uniq.each {|car| puts "#{car} => #{vehicles.count(car)}"}
end

vehicles = [
  'car', 'car', 'truck', 'car', 'SUV', 'truck',
  'motorcycle', 'motorcycle', 'Car', 'truck'
]

count_occurrences(vehicles)
