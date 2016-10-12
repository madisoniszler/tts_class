#Students and Teachers
teachers_name = %w[richie joanie fonz]
students_name = %w[thelma michael jj]

puts "What is your name?"
name = gets.chomp.downcase

if teachers_name.include?(name)
  puts "Glad to meet you #{name}."

else students_name.include?(name)
  puts "Haven't we met before #{name}?"
end
