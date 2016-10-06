#WHILE LOOP
x = 0
while x <= 10
    puts "#{x} is the loneliest number."
    x = x + 1
end
puts "We have exited the WHILE loop!"

#FOR LOOP
for x in 0..10
  puts "#{x} is the loneliest number."
end
puts "We have exited the FOR loop!"

#UNTIL LOOP
x = 0
until x == 10
    puts "#{x} isn’t 10 yet!"
    x += 1
end
puts "We have exited the UNTIL loop!"
