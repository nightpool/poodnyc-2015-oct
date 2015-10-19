class Bottles
    def verse(n)
        if n == 0
            return "No more bottles of beer on the wall, " +
            "no more bottles of beer.\n" +
            "Go to the store and buy some more, " +
            "99 bottles of beer on the wall.\n"
        end

        "#{n} bottle#{'s' if n > 1} of beer on the wall, " +
        "#{n} bottle#{'s' if n > 1} of beer.\n" +
        "Take #{(n > 1) ? 'one' : 'it'} down and pass it around, " +
        "#{(n > 1) ?  n-1 : 'no more'} bottle#{'s' if n-1 != 1} of beer on the wall.\n"
    end
    def verses(start, stop)
        (stop..start).map { |v|
            verse(v)
        }.reverse.join("\n")
    end
    def song
        verses(99,0)
    end
end