def adding_numbers(num1,num2)
  num1+num2
end

puts "May I have a number?"
response = gets.chomp.to_i
puts "May I have another number?"
response2 = gets.chomp.to_i

puts adding_numbers(response,response2)
