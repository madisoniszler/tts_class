class Word < String

    def very_long?(string)
        if string.length >= 10
            puts "true"
        end
    end
 end

 w = Word.new("superduperlongword")
 puts w.very_long?("superduperlongword")
    #true

 puts w.class
    #Word

 puts w.class.superclass
    #String

 puts w.length
