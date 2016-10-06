# LEVEL 1----------------------------------------

# Number 1: Until Dad says yes, keep asking him if we can go to Itchy and Scratchy Land. (write with both until and while)
dad_says = ""
until dad_says == "yes"
  puts "Dad, can we please go to Itchy and Scratchy Land?!"
  dad_says = gets.chomp.downcase
end
puts "Yay!!!!"

def itchy_scratchy
 puts "Can we go to itchy and scratchy land?"
 response=gets.chomp.downcase
end

while itchy_scratchy != "yes"
end

dad_says = ""
while dad_says != "yes"
  puts "Dad, can we please go to Itchy and Scratchy Land?!"
  dad_says = gets.chomp.downcase
end
puts "Yay!!!!"

# Number 2: Ask a user for their favorite color. If they answer with blue or green, puts "Great Choice!". If it's anything else, the program should mention the color by name and say "Really, that's your favorite color?"
puts "Hey!  What is your favorite color?"
fave_color = gets.chomp.downcase
if fave_color == "blue" || fave_color == "green"
  puts "Great Choice!"
else
  puts "Really? #{fave_color.capitalize} is your favorite color???"
end

# Number 3: Write a program that repeats everything a user inputs. It should only stop when a user types "I'm a dummy"
puts "Type something..."
input = ""
until input.capitalize == "I'm a dummy"
  input = gets.chomp
  puts input
end
puts "Phew - glad that game is over..."

# Number 4: Write a program that asks for the time of day and then greets a user appropriately.
puts "Excuse me, but do you have the time?"
time = gets.chomp.to_i
if time < 12
  puts "Thank you, and good morning!"
elsif time < 18
  puts "Thank you, and good evening!"
else
  puts "Thank you, and good night!"
end

# LEVEL 2----------------------------------------

# Number 1: Write a program that asks a user for their age. If they are under 21 the bouncer should tell them how many years they have left.
puts "Excuse me, how old are you?"
age = gets.chomp.to_i
if age >= 21
  puts "Welcome, come right in!"
elsif age == 20
  puts "Sorry, you have a year to go."
else
  puts "Sorry, you have #{21-age} years to go."
end

# LEVEL 3----------------------------------------

# Number 1: Write a program that keeps asking the user for a number until they type done. Puts the addition of the numbers.
sum = 0
done = false
until done == true
  puts "Please type a NON-ZERO number. [Type 'done' to stop]"
  response = gets.chomp
  if response.to_i > 0
    sum += response.to_i
  else
    done = true
  end
end
puts "The total sum of all your numbers is #{sum}!"

# Number 2: Create a game of Rock, Paper, Scissors.
def introduce_the_game()
  puts "On the count of three, type either 'rock', 'paper', or 'scissors'."
  puts "Ready?! (Y/N)"
  response = gets.chomp.downcase
  until response == "y"
    puts "...Ready now?"
    response = gets.chomp.downcase
  end
  puts "1"
  puts "2"
  puts "3"
  selection = gets.chomp.downcase
  if (selection == 'rock' || selection == 'scissors' || selection == 'paper')
    return selection
  else puts "#{selection} is invalid input. Let's try this again..."
    introduce_the_game()
  end
end

user_selection = introduce_the_game()
game_array = ['rock','paper','scissors']
computer_selection = game_array[rand(0..2)]
puts "Computer picked #{computer_selection}"
puts "You picked #{user_selection}"

if (computer_selection=='rock' && user_selection=='rock') || (computer_selection=='paper' && user_selection=='paper') || (computer_selection=='scissors' && user_selection=='scissors')
  puts "Tie"
elsif (computer_selection=='paper' && user_selection=='rock') || (computer_selection=='scissors' && user_selection=='paper') || (computer_selection=='scissors' && user_selection=='paper') || (computer_selection=='rock' && user_selection=='scissors')
  puts "You lose..."
elsif (computer_selection=='scissors' && user_selection=='rock') || (computer_selection=='rock' && user_selection=='paper') || (computer_selection=='paper' && user_selection=='scissors')
  puts "You win!"
end
