def fizzbuzz(start,end_point)
  start.upto(end_point) do |val|
    if (val % 3 == 0) && (val % 5 == 0)
      puts "FizzBuzz"
    elsif val % 3 == 0
      puts "Fizz"
    elsif val % 5 == 0
      puts "Buzz"
    else
      puts val
    end
  end
end

fizzbuzz(1, 15)