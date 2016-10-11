# LEVEL 1 ----------------------------------------
# Number 1 - "Students & Teachers" - write a program that has two arrays, one of student names and one of teacher names. Ask the user for their name, and greet them according to their role.

student_names = %w[elizabeth madison mumtaz julia]
teacher_names = %w[walid julie emily]

puts "What is your first name?"
name = gets.chomp.downcase

if student_names.include?(name)
  puts "Hey student #{name.capitalize}"
elsif teacher_names puts "Good Morning, Prof #{name.capitalize}"
end

# Number 2 - Create a program that will roll a dice twice and output the numbers.

def roll_dice(num_rolls)
  num_rolls.times do
    puts "Roll: #{rand(1..6)}"
  end
end

roll_dice(2)

# OR

dice = [1,2,3,4,5,6]
2.times do
  puts "Roll: #{dice.shuffle!.sample}"
end


# Number 3 - Adding from random arrays - write a program that takes two arrays of random numbers, the length of which is decided by the user, and adds the corresponding items in each array.

def build_array(length)
  return_array = []
  length.times do
    return_array << rand(100)
  end
  return return_array
end

def array_addition(array1,array2)
  sum_array = []
  for x in 0...array1.length
    sum_array << array1[x]+array2[x]
  end
  return sum_array
end

puts "Please input a number between 1 and 10:"
array_length = gets.chomp.to_i
array1 = build_array(array_length)
array2 = build_array(array_length)
puts "The sum of #{array1} and #{array2} is #{array_addition(array1,array2)}."
