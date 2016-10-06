puts "May I have a noun?"
noun = gets.chomp
puts "May I have an adjective?"
adjective = gets.chomp
puts "May I have a number?"
number = gets.chomp
puts "May I have a verb (past tense)?"
verb = gets.chomp
puts "May I have another noun?"
noun2 = gets.chomp
puts "May I have another number?"
number2 = gets.chomp

puts "There once was a " + noun + " who wanted to be a princess. She lived in a grand " + adjective + " castle.
After " + number.to_s + " years of stuffy rules, she wanted to escape. So the princess " + verb + " to learn to code. And then she develops a " + noun2 + " and sells it for " + number2.to_s + " gajillion dollars."
