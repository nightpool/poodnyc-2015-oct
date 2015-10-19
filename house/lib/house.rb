class House
    POEM = ['the house that Jack built',
            'the malt that lay in',
            'the rat that ate',
            'the cat that killed',
            'the dog that worried',
            'the cow with the crumpled horn that tossed',
            'the maiden all forlorn that milked',
            'the man all tattered and torn that kissed',
            'the priest all shaven and shorn that married',
            'the rooster that crowed in the morn that woke',
            'the farmer sowing his corn that kept',
            'the horse and the hound and the horn that belonged to']

    def line n
        return "This is #{phrase(n)}.\n"
    end

    def phrase n
        return '' if n < 1
        "#{POEM[n-1]} #{phrase(n-1)}".strip
    end

    def recite
        (1..POEM.size).map{|i|
            line i
        }.join("\n")
    end
end