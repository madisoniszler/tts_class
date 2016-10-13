#Roll Dice Twice
dice = %w[1 2 3 4 5 6]
2.times do
  puts "Roll: #{dice.shuffle!.sample}"
end
