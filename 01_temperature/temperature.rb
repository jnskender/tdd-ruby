# write your code here
def ftoc(temp)
    temp = (temp.to_s.to_f - 32) / 1.8
    temp.round
end

def ctof(temp)
    temp = temp.to_s.to_f * 1.8 + 32
    temp
end
