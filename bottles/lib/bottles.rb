class Bottles
    def verse(n)
        bottle = pluralize('bottle', n)
        "#{non_zero(n)} #{bottle} of beer on the wall, ".capitalize +
        "#{non_zero(n)} #{bottle} of beer.\n" +
        zero_switch("Take #{plural_switch('one', 'it', n)} down and pass it around, ",
                    "Go to the store and buy some more, ", n) +
        "#{non_zero((n-1) % 100)} #{pluralize('bottle', (n-1) % 100)} of beer on the wall.\n"
    end
    def non_zero(n)
       zero_switch(n, 'no more', n)
    end
    def zero_switch(str1, str2, n)
        (n == 0) ? str2 : str1
   end
    def pluralize(str, n)
        plural_switch(str+'s', str, n)
    end
    def plural_switch(str1, str2, n)
        (n != 1) ? str1 : str2
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