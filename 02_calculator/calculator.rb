#write your code here
def add num1,num2
  "#{num1}".to_f + "#{num2}".to_f
end

def subtract num1,num2
  "#{num1}".to_f - "#{num2}".to_f
end

def sum array
  sum = 0
  for i in 0..array.length
    sum += array[i].to_i
  end
  sum
end

def multiply *numbers
  result = 1
  numbers.each {|n| result = result * n }
  result
end

def power num1,num2
  ("#{num1}".to_i) ** ("#{num2}".to_i)
end

def factorial number
  array = []
  for i in 0..(number - 1)
    array.push(i + 1) #exclude zero from multiplication list
  end
  if array.empty?
    1
  elsif array.length == 1
    1
  else
     array.inject(:*) #multiply entire array
  end
end
