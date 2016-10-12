
#Adding Random Arrays  - Review before class please
def build_array(length)
  return_array = []
  length.times do
    return_array << rand(50)
end

return return_array
end

def array_addition(array1, array2)
  sum_array =[]
  for x in 0...array1.length
    sum_array << array1[x]+array2[x]
  end
  return sum_array
end

puts "Please choose a number between 1 and 10:"
array_length = gets.chomp.to_i
array1 = build_array(array_length)
array2 = build_array(array_length)
puts "The sum of #{array1} and #{array2} is #{array_addition(array1,array2)}."
end
