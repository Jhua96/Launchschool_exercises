VALID_CHOICES = ['rock', 'paper', 'scissors', 'lizard', 'spock']
CONVERSION = { 'r' => 'rock', 'p' => 'paper', 's' => 'scissors',
               'l' => 'lizard', 'v' => 'spock' }

def win?(first, second)
  case first
  when 'rock'
    second == 'scissors' || second == 'lizard'
  when 'paper'
    second == 'rock' || second == 'spock'
  when 'scissors'
    second == 'paper' || second == 'lizard'
  when 'lizard'
    second == 'paper' || second == 'spock'
  when 'spock'
    second == 'rock' || second == 'scissors'
  end
end

def display_results(choice, computer_choice)
  if choice == computer_choice
    prompt("Tie")
  elsif win?(choice, computer_choice)
    prompt("You Win")
  else
    prompt("You Lose")
  end
end

def convert(letter)
  letter.sub!(letter, CONVERSION[letter])
end

def test_method
  prompt('test message')
end

def prompt(message)
  puts("=> #{message}")
end

player_score = 0
computer_score = 0

loop do
  prompt("Welcome to rock paper scissors")
  choice = ''
  loop do
    prompt("Choose one: #{VALID_CHOICES.join(', ')} (r,p,s,l,v)")
    choice = gets.chomp.downcase
    convert(choice) if choice.length == 1

    if VALID_CHOICES.include?(choice)
      break
    else
      prompt("Not a valid choice try again")
    end
  end

  computer_choice = VALID_CHOICES.sample

  prompt("You chose #{choice} and computer chose #{computer_choice}")
  display_results(choice, computer_choice)

  player_score += 1 if win?(choice, computer_choice)
  computer_score += 1 if win?(computer_choice, choice)
  prompt("Player Wins") if player_score >= 5
  prompt("Computer Wins") if computer_score >= 5
  prompt("Player: #{player_score} Computer: #{computer_score}")
  prompt("Want to play again? (y/n)")
  answer = gets.chomp.downcase

  break if answer != 'y'
end
