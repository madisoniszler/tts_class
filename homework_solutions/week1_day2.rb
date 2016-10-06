# LEVEL 1----------------------------------------

# Number 1: Write a program that prompts the user for 2 numbers and adds them.
puts "Please enter a whole number."
num1 = gets.chomp.to_i
puts "Enter a different whole number."
num2 = gets.chomp.to_i
puts "The sum of #{num1} and #{num2} is #{num1+num2}."

# Number 2: Write a program that prompts the user for a string and outputs the string in reverse.
puts "Please type a word."
word = gets.chomp.downcase
puts "Your word in reverse is #{word.reverse}."

# Number 3: Write a program that prompts the user for a string then outputs the length of the string.
puts "Please type a word."
word = gets.chomp.downcase
puts "Your word has #{word.length} characters."

# LEVEL 2----------------------------------------

# Number 1: Write a method that takes two integers as arguments, divides the first integer by the second integer and returns the result-including the remainder. If either of the numbers is not an integer, then don’t accept the number and ask again. Do not accept zero (0) as a number.
puts "Please enter a non-zero whole number."
num1 = gets.chomp.to_i
until num1 != 0
  puts "Please enter a non-zero whole number."
  num1 = gets.chomp.to_i
end
puts "Please enter another non-zero whole number."
num2 = gets.chomp.to_i
until num2 != 0
  puts "Please enter a non-zero whole number."
  num2 = gets.chomp.to_i
end
puts "#{num1} divided by #{num2} is: #{num1/num2}"
puts "And the remainder is: #{num1%num2}"
