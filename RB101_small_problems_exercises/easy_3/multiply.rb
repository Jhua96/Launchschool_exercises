def multiply(x,y)
  x * y
end

def square(x,amount=1)
  y = x
  (amount - 1).times do 
    y = multiply(x,y)
  end
  y
  
end



p multiply([5], 3) == 15
p multiply([5], 3)

p square(3,3)

