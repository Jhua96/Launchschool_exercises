ages = { "Herman" => 32, "Lily" => 30, "Grandpa" => 5843, "Eddie" => 10, "Marilyn" => 22, "Spot" => 237 }


total_age = 0
ages.each {|_,val| total_age += val}
p total_age

p ages.select {|_,val| val < 100}

youngest = ages.values.first


ages.each do |_, val| 
    
    youngest = val if val <= youngest
  end

p youngest

