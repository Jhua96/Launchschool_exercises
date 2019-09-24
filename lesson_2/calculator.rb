require 'yaml'
MESSAGES = YAML.load_file('calculator_messages.yml')

def prompt(message)
  puts("=> #{message}")
end

def valid_number?(num)
  return true if num == '0'
  num.to_i != 0 
end

def number?(num)
  num.respond_to?(:to_f)
end

def operation_to_message(op)
  case op
  when '1'
    'Adding'
  when '2'
    'Subtracting'
  when '3'
    'Multiplying'
  when '4'
    'Dividing'
  end
end

puts MESSAGES.inspect

loop do
  prompt(MESSAGES['welcome'])

  first = ''
  second = ''

  loop do
    prompt(MESSAGES['first_number'])
    first = gets.chomp
    break if valid_number?(first)
    prompt(MESSAGES['not_valid'])
  end

  loop do
    prompt(MESSAGES['second_number'])
    second = gets.chomp
    break if valid_number?(second)
    prompt(MESSAGES['not_valid'])
  end
  operator_prompt = <<-MSG
    What operation would you like to perform?
    1) add
    2) subtract
    3) multiply
    4) divide
  MSG

  result = ''
  prompt(operator_prompt)
  loop do
    operation = gets.chomp
    prompt("#{operation_to_message(operation)} the two numbers")
    result = case operation
             when '1'
               first.to_i + second.to_i
             when '2'
               first.to_i - second.to_i
             when '3'
               first.to_i * second.to_i
             when '4'
               first.to_i / second.to_i
             else
               "That is not a valid operation try again"
             end
    break if result != MESSAGES['try_again']
  end

  prompt("The result is #{result}")
  prompt(MESSAGES['again'])
  answer = gets.chomp.downcase.start_with?("y")
  break if !answer 
end
