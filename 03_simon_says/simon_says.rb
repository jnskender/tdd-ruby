#write your code here
def echo string
  "#{string}"
end

def shout string
  "#{string}".upcase
end

def repeat(string, number=1)
  array = []
  number = "#{number}".to_i
  string = "#{string}"
  phrase = ""
  if number == 1
    array.push(string)
    array.push(" ")
    array.push(string)
  elsif number > 1
  for i in 0..number - 1
    array.push("#{string}")
    array.push(" ")
  end
  array.pop
  end
  for i in 0..array.length
    phrase += array[i].to_s
  end
  phrase
end

def start_of_word string, number=1
  array = "#{string}".scan(/\w/)
  chars= ""
  for i in 0..number - 1
  chars += array[i]
  end
  chars
end

def first_word string
  words = "#{string}".split(/\W+/)
  words[0]
end


def titleize string
  words = "#{string}".split(/\W+/)
  if words.size <= 1
    words[0].capitalize
else
 words[0] =  words[0].capitalize
  for i in 1..words.size - 1
    if words[i] != "and" && words[i] != "the" && words[i] != "but" && words[i] != "over"
      words[i] = words[i].capitalize
    end
  end
  words.join(" ")
  end
end
