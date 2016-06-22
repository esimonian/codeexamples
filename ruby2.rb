# check if word has no repeating letters, consecutive or non-consecutive
def is_isogram(string)
  string.downcase.chars.uniq == string.downcase.chars
end

# make sure that the second argument (tail), is the same 
# as the last letter of the first argument (body) 

def correct_tail(body, tail)
  body[-1] == tail 
end

# return who has liked something correctly formated by number or likes
def likes(names)
 case names.length
 when 0 
  return 'no one likes this'
 when 1
  "#{names[0]} likes this" 
 when 2 
  "#{names[0]} and #{names[1]} like this" 
 when 3
  "#{names[0]}, #{names[1]} and #{names[2]} like this" 
 else
    "#{names[0]}, #{names[1]} and #{(names.length - 2)} others like this" 
  end
end