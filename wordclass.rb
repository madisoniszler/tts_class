def random_method
   puts "You are in the method"
   yield
   puts "You are again back to the method"
   yield
end

random_method {puts "You are in the block"}
#=> You are in the method
#=> You are in the block
#=> You are again back to the method
#=> You are in the block
