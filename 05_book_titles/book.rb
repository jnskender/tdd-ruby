class Book
    def title=(title)
        @title = titleize(title)
    end

    attr_reader :title

    def titleize(string)
        words = string.to_s.split(/\W+/)
        lowercase = %w(an a and the but over in of)
        if words.size <= 1
            words[0].capitalize
        else
            words[0] = words[0].capitalize # Always capitalize first word
            for i in 1..words.size - 1
                words[i] = words[i].capitalize unless lowercase.include?(words[i])
            end
            words.join(' ')
        end
    end
end
