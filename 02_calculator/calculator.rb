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
