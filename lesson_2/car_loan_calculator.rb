#START

#GET loan amount from user
#GET APR from user in int then concert to percent
#GET loan duration in months
#SET monthly payments in variable 


def loan_calculate(loan,interest,months)
  payment = loan * (interest / (1 - (1 + interest)**(-months)))
end

def prompt(message)
  puts message
end

def float?(input)
  input.to_f.to_s == input
end

def integer?(input)
  input.to_i.to_s == input
end

def valid?(num)
  integer?(num) || float?(num)
end
loan = ''
loop do
  prompt("loan amount?")
  loan = gets.chomp
  if valid?(loan)
    loan = loan.to_f
    break
  end
  prompt("Real numbers only, try again")
end

months = ''
loop do
  prompt("loan duration in months?")
  months = gets.chomp
  if valid?(months)
    months = months.to_i
    break
  end
  prompt("Real numbers only, try again")
end

interest = ''

loop do
  prompt("apr?")
  interest = gets.chomp
  if valid?(interest)
    interest = interest.to_f / 100 / 12
    break
  end
  prompt("Real numbers only, try again")
end

prompt("your monthly interest is #{loan_calculate(loan,interest,months).round(2)}")



