99.downto(0) do |x|
  puts "#{x} bottles of beer on the wall, #{x} bottles of beer.  You take one down and pass it around, #{x-1} bottles of beer on the wall."
  puts (x*5+3).to_s
  puts "hi"
end
