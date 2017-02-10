
def translate(input)
    words = input.to_s.split
    latin = []
    for i in 0..words.size - 1
        latin[i] = translate_individual(words[i]) # send each individual word to be scrambled and add to new array
    end
    latin.join(' ')
end


def translate_individual(string)
    string_array = string.to_s.chars
    cons_array = consonant_array(string.to_s)
    last_const = cons_array.index { |x| x == false } # find the index of last repeating consonant
    for i in 0..last_const - 1
        string_array.push(string_array[i]) # push repeating consonants to end of array
    end
    last_const.times do # remove repeating consonants from beginning of array
        string_array.shift
    end
    string_array.push('ay')
    string_array.join
end

def consonant_array(string) # creates array of true false values. (ex. "no" = [true,false]) quiet
    array = string.to_s.chars
    is_consonant = []
    for i in 0..array.size
        if array[i] == 'u' && array[i - 1] == 'q' # check if instance of qu in sequence
            is_consonant[0..i] = true # if qu exists all preceding chars are considered consonants
        elsif array[i] == 'a' || array[i] == 'e' || array[i] == 'i' || array[i] == 'o' || array[i] == 'u'
            is_consonant[i] = false
        else
            is_consonant[i] = true
        end
    end
    is_consonant
end
